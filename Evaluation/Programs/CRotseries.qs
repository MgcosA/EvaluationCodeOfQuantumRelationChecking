namespace Program.CRot {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    
    function IntToBoolArrayBE(number : Int, bits : Int) : Bool[]
    {
        mutable ret = [false, size = bits];
        mutable temp = number;
        for i in bits - 1 .. -1 .. 0
        {
            if ((temp &&& 1) == 1)
            {
                set ret w/= i <- true;
            }
            else
            {
                set ret w/= i <- false;
            }
            set temp = temp >>> 1;
        }
        return ret;
    }

    operation Rprime(k : Int, c : Double, q : Qubit) : Unit is Adj + Ctl
    {
        let fact = 2.0 * ArcSin(c / IntAsDouble(k));
        R1(fact, q);
    }

    // Bigendian control
    operation CRot(c : Double, qctrl : Qubit[], qtar : Qubit) : Unit
    {
        let N = Length(qctrl);
        H(qtar);
        for i in 1 .. 2 ^ N - 1
        {
            let bctrl = IntToBoolArrayBE(i, N);
            if (i < 2 ^ (N - 1))
            {
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(i, c, _), qctrl, qtar);
            }
            else
            {
                let j = 2 ^ N - i;
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(-j, c, _), qctrl, qtar);
            }
        }
        H(qtar);
        S(qtar);
    }

    operation CRot_bug1(c : Double, qctrl : Qubit[], qtar : Qubit) : Unit
    {
        let N = Length(qctrl);
        H(qtar);
        for i in 1 .. 2 ^ N - 1
        {
            let bctrl = IntToBoolArrayBE(i, N);
            if (i < 2 ^ (N - 1))
            {
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(i, c, _), qctrl, qtar);
            }
            else
            {
                let j = 2 ^ N - i;
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(-j, c, _), qctrl, qtar);
            }
        }
        H(qtar);
        let m = M(qtar);        //bug1 S->M
    }

    operation CRot_bug2(c : Double, qctrl : Qubit[], qtar : Qubit) : Unit
    {
        let N = Length(qctrl);
        H(qtar);
        for i in 1 .. 2 ^ N - 1
        {
            let bctrl = IntToBoolArrayBE(i, N);
            if (i < 2 ^ (N - 1))
            {
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(i, c, _), qctrl, qtar);
            }
            else
            {
                let j = 2 ^ N - i;
                ApplyControlledOnBitString<Qubit>(bctrl, Rprime(-j, c, _), qctrl, qtar);
            }
        }
        H(qtar);
        S(qtar);
        let m = M(qtar);      //bug2 Add M
    }




    // Tested Correct CRot
    operation TestCRot(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        CRot(1.0, qs[1 .. N - 1], qs[0]);
    }
    operation TestCRot_bug1(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        CRot_bug1(1.0, qs[1 .. N - 1], qs[0]);
    }
    operation TestCRot_bug2(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        CRot_bug2(1.0, qs[1 .. N - 1], qs[0]);
    }

}
