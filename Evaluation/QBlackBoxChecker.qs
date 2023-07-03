namespace Quantum.QBlackBoxChecker
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Random;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Arrays;

    operation DrawTwoRandomInt(min : Int, max : Int) : (Int, Int)
    {
        if (min == max)
        { return (min, min); }
        
        let num1 = DrawRandomInt(min, max);
        mutable num2 = 0;
        repeat
        {
            set num2 = DrawRandomInt(min, max);
        } until (num1 != num2);
        return (num1, num2);
    }

    // Create State |bits>+e^(iφ)|~bits> from |0..0>
    // bits : Bool[], specifying |bits>
    // phi : Double, specifying the angle φ
    // qs : Qubit[], applied qubits
    operation CreateKetBitsPlusEIPhiNegation(bits : Bool[], phi : Double, qs : Qubit[]) : Unit is Adj
    {
        body (...)
        {
            let n = Length(qs);
            if (n != Length(bits))
            {
                fail "Qubit array and bool array have different length!";
            }

            H(qs[0]);
            //Consider the first bit equals 0 or 1
            if (bits[0])    //first bit equals 1
            {
                Adjoint Rz(phi, qs[0]);
                for i in 1 .. n - 1
                {
                    if (not bits[i])    //bits[i] == 0
                    { X(qs[i]); }
                    CNOT(qs[0], qs[i]);
                }
            }
            else    //first bit equals 0
            {
                Rz(phi, qs[0]);
                for i in 1 .. n - 1
                {
                    if (bits[i])    //bits[i] == 1
                    { X(qs[i]); }
                    CNOT(qs[0], qs[i]);
                }
            }
		}
        adjoint auto;
    }

    // Create Qubit with given θ, φ on Bloch sphere from |0>
    // theta : Double, the angle θ
    // phi : Double, the angle φ
    // q : Qubit, applied qubit
    operation CreateQubitOnBlochSphere(theta : Double, phi : Double, q : Qubit) : Unit is Adj + Ctl
    {
        body (...)
        {
            H(q);
            R1(theta, q);
            H(q);
            S(q);
            R1(phi, q);
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }

    operation DrawRandomXYZ() : Pauli
    {
        let rnd = DrawRandomInt(1, 3);
        if (rnd == 1)
        { return PauliX; }
        elif (rnd == 2)
        { return PauliY; }
        elif (rnd == 3)
        { return PauliZ; }
        return PauliI;
    }

    operation GenRandomPaulis(N : Int) : Pauli[]
    {
        mutable ret = [PauliI, size = N];
        for i in 0 .. N - 1
        {
            let sigma = DrawRandomXYZ();
            set ret w/= i <- sigma;
        }
        return ret;
    }

    operation GenPauliQubit(p : Pauli, q : Qubit) : Unit is Adj
    {
        body (...)
        {
            if (p == PauliX)
            {
                H(q);
            }
            elif (p == PauliY)
            {
                H(q);
                S(q);
            }
		}
        adjoint auto;
    }

    operation GenPauliState(paulis : Pauli[], qs : Qubit[]) : Unit is Adj
    {
        body (...)
        {
            let N = Length(qs);
            for i in 0 .. N - 1
            {
                GenPauliQubit(paulis[i], qs[i]);
            }
	    }
        adjoint auto;
    }

    //----------

    operation ApplyGateByBoolArrayCA(bits : Bool[],
                                    GFalse : Qubit => Unit is Adj + Ctl,
                                    GTrue : Qubit => Unit is Adj + Ctl,
                                    qs : Qubit[]) : Unit is Adj + Ctl
	{
        body (...)
        {
            let n = Length(qs);
            if (n != Length(bits))
            {
                fail "Qubit array and bool array have different length!";
            }
            for i in 0 .. n - 1
            {
                if (bits[i])
                { GTrue(qs[i]); }
                else
                { GFalse(qs[i]); }
            }
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }


    // Generate State from a given Bool array, |0> with FLASE and |1> with TRUE.
    // bits : Bool[], the format of state
    // qs : Qubit[], applied qubits
    operation CreateStateFromBoolArray(bits : Bool[], qs : Qubit[]) : Unit is Adj + Ctl
    {
        body (...)
        {
            ApplyGateByBoolArrayCA(bits, I, X, qs);
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }

    operation CreateQIntLE(number : Int, qs : Qubit[]) : Unit is Adj + Ctl
    {
        body (...)
        {
            let N = Length(qs);
            let barr = IntAsBoolArray(number, N);
            CreateStateFromBoolArray(barr, qs);
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }


    //---------------------
    //SWAP test

    // Type for specifying tested state
    newtype TestedState = (NAllQubits : Int, PrepareGate : (Qubit[] => Unit), TargetQubits : Int[]);
    // Type for specifying combined tested states
    newtype TestedCombinedState = (NAllQubits : Int, PrepareGate : (Qubit[] => Unit), Target1Qubits : Int[], Target2Qubits : Int[]);
    // Type for specifying tested qubit
    newtype TestedQubit = (NAllQubits : Int, PrepareGate : (Qubit[] => Unit), TargetQubit : Int);
    // Type for specifying combined tested qubit
    newtype TestedCombinedQubit = (NAllQubits : Int, PrepareGate : (Qubit[] => Unit), Target1Qubit : Int, Target2Qubit : Int);

    //Wrap qubit to state
    function WrapQubitToState(q : TestedQubit) : TestedState
    {
        return TestedState(q::NAllQubits, q::PrepareGate, [q::TargetQubit]);
    }
    //Wrap combined qubit to combined state
    function WrapCQubitToCState(q : TestedCombinedQubit) : TestedCombinedState
    {
        return TestedCombinedState(q::NAllQubits, q::PrepareGate, [q::Target1Qubit], [q::Target2Qubit]);
    }

    // Return the range of total n elements : 0 ~ n-1
    function TOTAL(n : Int) : Int[]
    {
        return RangeAsIntArray(0 .. n - 1);
    }
    // Return the given range
    function RANGE(begin : Int, end : Int) : Int[]
    {
        return RangeAsIntArray(begin .. end);
    }

    // Combine two operations as one
    operation CombineOPs(OP1 : (Qubit[] => Unit), NqsOP1 : Int, OP2 : (Qubit[] => Unit), NqsOP2 : Int, qs : Qubit[]) : Unit
    {
        OP1(qs[0 .. NqsOP1 - 1]);
        OP2(qs[NqsOP1 .. NqsOP1 + NqsOP2 - 1]);
    }

    // Add a constant K to each element of an Int array
    function IntArrayAddK(IntArray : Int[], k : Int) : Int[]
    {
        let n = Length(IntArray);
        //mutable ret = new Int[n];
        mutable ret = [0, size = n];
        for i in 0 .. n - 1
        {
            set ret w/= i <- IntArray[i] + k;
        }
        return ret;
    }

    // One iteration of SWAP-test, return the measurement result of aux qubit
    operation OnceSwapTest(qs1 : Qubit[], qs2 : Qubit[], qaux : Qubit) : Result
    {
        let n = Length(qs1);
        if (n != Length(qs2))
        {
            fail "Two compared states have different length!";
        }
        
        H(qaux);
        for i in 0 .. n - 1
        {
            Controlled SWAP([qaux], (qs1[i], qs2[i]));
        }
        H(qaux);
        let r = M(qaux);
        return r;
    }

    // SWAP-test for two states which are given by two parts of a state
    // Return : The number of output 1 in SWAP-test
    operation SwapTestForTwoPartsOfAState(state : TestedCombinedState, Ntimes : Int) : Int
    {
        if (Ntimes <= 0)
        { return 0; }
        let Nqubits = state::NAllQubits;

        mutable ret = 0;
        use qs = Qubit[Nqubits + 1]
        {
            for i in 1 .. Ntimes
            {
                ResetAll(qs);
                state::PrepareGate(qs[0 .. Nqubits - 1]);
                let r1 = Subarray<Qubit>(state::Target1Qubits, qs);
                let r2 = Subarray<Qubit>(state::Target2Qubits, qs);
                let m = OnceSwapTest(r1, r2, qs[Nqubits]);
                if (m == One)
                { set ret = ret + 1; }
            }
            ResetAll(qs);
        }
        return ret;
    }


    // SWAP-test for two given state
    // Return : The number of output 1 in SWAP-test
    operation SwapTestForTwoStates(state1 : TestedState, state2 : TestedState, Ntimes : Int) : Int
    {
        let n1 = state1::NAllQubits;
        let G1 = state1::PrepareGate;
        let n2 = state2::NAllQubits;
        let G2 = state2::PrepareGate;
        let r2 = IntArrayAddK(state2::TargetQubits, n1);
        let combined = TestedCombinedState(n1 + n2, CombineOPs(G1, n1, G2, n2, _), state1::TargetQubits, r2);
        let r = SwapTestForTwoPartsOfAState(combined, Ntimes);
        return r;
    }


    // SWAP-test for two states which are given by two parts of a state
    // Return false if 1 occurs
    operation SwapTestReturnIf1(state : TestedCombinedState, Ntimes : Int) : Bool
    {
        if (Ntimes <= 0)
        { return false; }
        let Nqubits = state::NAllQubits;

        mutable i = 1;
        mutable ret = true;
        use qs = Qubit[Nqubits + 1]
        {
            repeat
            {
                ResetAll(qs);
                state::PrepareGate(qs[0 .. Nqubits - 1]);
                let r1 = Subarray<Qubit>(state::Target1Qubits, qs);
                let r2 = Subarray<Qubit>(state::Target2Qubits, qs);
                let m = OnceSwapTest(r1, r2, qs[Nqubits]);
                if (m == One)
                { set ret = false; }    //Return if 1 occurs
                set i = i + 1;
            } until ((not ret) or i > Ntimes);
            ResetAll(qs);
        }
        return ret;
    }


    // Test whether a state is pure state
    operation is_TrAB_equals_to_1(state1 : TestedState, state2 : TestedState, Ntimes : Int) : Bool
    {
        let n1 = state1::NAllQubits;
        let G1 = state1::PrepareGate;
        let n2 = state2::NAllQubits;
        let G2 = state2::PrepareGate;
        let r2 = IntArrayAddK(state2::TargetQubits, n1);
        let combined = TestedCombinedState(n1 + n2, CombineOPs(G1, n1, G2, n2, _), state1::TargetQubits, r2);
        let r = SwapTestReturnIf1(combined, Ntimes);
        return r;
    }


    //------------

    operation InputAndRun(Prepare : Qubit[] => Unit, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        Prepare(qs);
        Proc(qs);
    }

    operation InputPauliAndRun(ps : Pauli[], Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        GenPauliState(ps, qs);
        Proc(qs);
    }

    operation InputIntLEAndRun(num : Int, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        CreateQIntLE(num, qs);
        Proc(qs);
    }

    operation InputIntAndHAndRun(num : Int, Hindex : Int, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        CreateQIntLE(num, qs);
        H(qs[Hindex]);
        Proc(qs);
    }

    operation InputIntAndHXAndRun(num : Int, Hindex : Int, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        CreateQIntLE(num, qs);
        X(qs[Hindex]);
        H(qs[Hindex]);
        Proc(qs);
    }

    operation InputIntPlusNegAndRun(num : Int, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        let bnum = IntAsBoolArray(num, Length(qs));
        CreateKetBitsPlusEIPhiNegation(bnum, 0.0, qs);
        Proc(qs);
    }

    operation InputIntMinusNegAndRun(num : Int, Proc : Qubit[] => Unit, qs : Qubit[]) : Unit
    {
        let bnum = IntAsBoolArray(num, Length(qs));
        CreateKetBitsPlusEIPhiNegation(bnum, PI(), qs);
        Proc(qs);
    }

    operation IDRun(Nqs : Int, Gen : Qubit[] => Unit, Proc : Qubit[] => Unit, Uncomp : Qubit[] => Unit) : Bool
    {
        mutable r = -1;
        use qs = Qubit[Nqs]
        {
            Gen(qs);
            Proc(qs);
            Uncomp(qs);
            set r = ResultArrayAsInt(MultiM(qs));
            ResetAll(qs);
	    }
        if (r == 0)
        { return true; }
        return false;
    }


    //----------------------------------------

    operation IdentityCheck(Nqs : Int, Proc : Qubit[] => Unit, Ntimes : Int) : Bool
    {
        for i in 1 .. Ntimes
        {
            let ps = GenRandomPaulis(Nqs);
            let r = IDRun(Nqs, GenPauliState(ps, _), Proc, Adjoint GenPauliState(ps, _));            
            if (not r)
            {
                return false;
            }
        }
        return true;
    }

    operation EquivalenceCheck(Nqs : Int, Proc1 : Qubit[] => Unit, Proc2 : Qubit[] => Unit,
                              Ntimes : Int, NSTrepeat : Int, epsilon : Double) : Bool
    {
        for i in 1 .. Ntimes
        {
            let pauli = GenRandomPaulis(Nqs);
            let state1 = TestedState(Nqs, InputPauliAndRun(pauli, Proc1, _), TOTAL(Nqs));
            let state2 = TestedState(Nqs, InputPauliAndRun(pauli, Proc2, _), TOTAL(Nqs));
            let Na = SwapTestForTwoStates(state1, state1, NSTrepeat);
            let Nb = SwapTestForTwoStates(state2, state2, NSTrepeat);
            let Nab = SwapTestForTwoStates(state1, state2, NSTrepeat);
            let r = IntAsDouble(2 * Nab - Na - Nb) / IntAsDouble(NSTrepeat);
            //let level = IntAsDouble(NSTrepeat - Nab) / (IntAsDouble(NSTrepeat) - (IntAsDouble(Na) + IntAsDouble(Nb)) * 0.5);
            //Message($"level = {level}");
            if (AbsD(r) > epsilon)
            { return false; }
        }
        return true;
    }

    operation UnitarityCheck(Nqs : Int, Proc : Qubit[] => Unit,
                             Ntimes : Int, NSTrepeat : Int, epsilon : Double) : Bool
    {
        for i in 0 .. Ntimes - 1
        {
            if (i <= (Ntimes - 1) / 2)
            {
                let m = DrawRandomInt(0, 2 ^ Nqs - 1);
                let stateplus = TestedState(Nqs, InputIntPlusNegAndRun(m, Proc, _), TOTAL(Nqs));
                let stateminus = TestedState(Nqs, InputIntMinusNegAndRun(m, Proc, _), TOTAL(Nqs));
                let Npm = SwapTestForTwoStates(stateplus, stateminus, NSTrepeat);
                let r1 = 1.0 - 2.0 * IntAsDouble(Npm) / IntAsDouble(NSTrepeat);
                //Message($"PlusMinus : {r1}");
                if (AbsD(r1) > epsilon)
                { return false; }
			}
            else
            {
                let m = DrawRandomInt(0, 2 ^ Nqs - 1);
                let state1 = TestedState(Nqs, InputIntPlusNegAndRun(m, Proc, _), TOTAL(Nqs));
                let state2 = TestedState(Nqs, InputIntMinusNegAndRun(m, Proc, _), TOTAL(Nqs));
                let Na1a2 = SwapTestForTwoStates(state1, state2, NSTrepeat);
                let r1 = 1.0 - 2.0 * IntAsDouble(Na1a2) / IntAsDouble(NSTrepeat);
                //Message($"A1A2 : {r1}");
                if (AbsD(r1) > epsilon)
                { return false; }
            }
        }
        return true;
    }

    //-------------------------

    //function CalcIterTimes(alpha : Double, P2 : Double) : Int
    //{
    //    let N = Floor(Log(1.0 - alpha) / Log(P2));
    //    if (N < 1)
    //    { return 1; }
    //    return N;
    //}

    //-------------------------

    function TofEquivalence(k : Int, alpha : Double, epsilon : Double) : Int
    {
        let N = Ceiling( 8.0 / epsilon / epsilon * Log(2.0 / (1.0 - PowD(1.0 - alpha, 1.0 / IntAsDouble(k)))) );
        if (N < 1)
        { return 1; }
        return N;
    }

    function TofUnitarity(k : Int, alpha : Double, epsilon : Double) : Int
    {
        let N = Ceiling( 2.0 / epsilon / epsilon / Log(2.0) * Log(1.0 / (1.0 - PowD(1.0 - alpha, 1.0 / IntAsDouble(k)))) );
        if (N < 1)
        { return 1; }
        return N;
    }

    //-------------------------
    // Accelerated Checking

    // Accelerated Equivalence Checking
    operation EquivalenceCheck_accelerated(Nqs : Int, Proc1 : Qubit[] => Unit, Proc2 : Qubit[] => Unit,
                   Ntimes : Int, NTrace : Int, NSTrepeat : Int, epsilon : Double) : Bool
    {
        for i in 1 .. Ntimes
        {
            let pauli = GenRandomPaulis(Nqs);
            let state1 = TestedState(Nqs, InputPauliAndRun(pauli, Proc1, _), TOTAL(Nqs));
            let state2 = TestedState(Nqs, InputPauliAndRun(pauli, Proc2, _), TOTAL(Nqs));
            let Pa = is_TrAB_equals_to_1(state1, state1, NTrace);
            let Pb = is_TrAB_equals_to_1(state2, state2, NTrace);

            // if the purity of state1 and state2 is different, fail.
            if (Pa != Pb)
            { return false; }

            if (Pa)
            {
                //For pure states
                let Pab = is_TrAB_equals_to_1(state1, state2, NTrace);
                if (not Pab)
                { return false; }
            }
            else
            {
                //For general states
                let Na = SwapTestForTwoStates(state1, state1, NSTrepeat);
                let Nb = SwapTestForTwoStates(state2, state2, NSTrepeat);
                let Nab = SwapTestForTwoStates(state1, state2, NSTrepeat);
                let r = IntAsDouble(2 * Nab - Na - Nb) / IntAsDouble(NSTrepeat);
                if (AbsD(r) > epsilon)
                { return false; }
            }
        }
        return true;
    }

    // Accelerated Unitarity Checking
    operation UnitarityCheck_accelerated(Nqs : Int, Proc : Qubit[] => Unit,
                           Ntimes : Int, NTrace : Int, NSTrepeat : Int, epsilon : Double) : Bool
    {
        for i in 1 .. Ntimes
        {
            let pauli = GenRandomPaulis(Nqs);
            let state = TestedState(Nqs, InputPauliAndRun(pauli, Proc, _), TOTAL(Nqs));
            let pure = is_TrAB_equals_to_1(state, state, NTrace);
            if (not pure)
            { return false; }
        }
        return UnitarityCheck(Nqs, Proc, Ntimes, NSTrepeat, epsilon);
    }


    //------------for evaluation--------------
    // Accelerated Equivalence Checking for evaluation
    operation EquivalenceCheck_eva(Nqs : Int, Proc1 : Qubit[] => Unit, Proc2 : Qubit[] => Unit,
                   Ntimes : Int, NTrace : Int, NSTrepeat : Int, epsilon : Double) : (Bool, Bool)
    {
        for i in 1 .. Ntimes
        {
            let pauli = GenRandomPaulis(Nqs);
            let state1 = TestedState(Nqs, InputPauliAndRun(pauli, Proc1, _), TOTAL(Nqs));
            let state2 = TestedState(Nqs, InputPauliAndRun(pauli, Proc2, _), TOTAL(Nqs));
            let Pa = is_TrAB_equals_to_1(state1, state1, NTrace);
            let Pb = is_TrAB_equals_to_1(state2, state2, NTrace);

            // if the purity of state1 and state2 is different, fail.
            if (Pa != Pb)
            { return (false, true); }

            if (Pa)
            {
                //For pure states
                let Pab = is_TrAB_equals_to_1(state1, state2, NTrace);
                if (not Pab)
                { return (false, true); }
            }
            else
            {
                //For general states
                let Na = SwapTestForTwoStates(state1, state1, NSTrepeat);
                let Nb = SwapTestForTwoStates(state2, state2, NSTrepeat);
                let Nab = SwapTestForTwoStates(state1, state2, NSTrepeat);
                let r = IntAsDouble(2 * Nab - Na - Nb) / IntAsDouble(NSTrepeat);
                if (AbsD(r) > epsilon)
                { return (false, false); }
            }
        }
        return (true, false);
    }

    // Accelerated Unitarity Checking for evaluation
    operation UnitarityCheck_eva(Nqs : Int, Proc : Qubit[] => Unit,
                           Ntimes : Int, NTrace : Int, NSTrepeat : Int, epsilon : Double) : (Bool, Bool)
    {
        for i in 1 .. Ntimes
        {
            let pauli = GenRandomPaulis(Nqs);
            let state = TestedState(Nqs, InputPauliAndRun(pauli, Proc, _), TOTAL(Nqs));
            let pure = is_TrAB_equals_to_1(state, state, NTrace);
            if (not pure)
            { return (false, true); }
        }
        return (UnitarityCheck(Nqs, Proc, Ntimes, NSTrepeat, epsilon), false);
    }

}
