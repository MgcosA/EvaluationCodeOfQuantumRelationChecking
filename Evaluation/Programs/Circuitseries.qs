namespace Program.Circuit {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    // Empty program
    operation Empty(qs : Qubit[]) : Unit {}

    operation Empty_bug1(qs : Qubit[]) : Unit
    {
        let r = M(qs[0]);
    }
    operation Empty_bug2(qs : Qubit[]) : Unit
    {
        T(qs[0]);
    }


    // Length(qs) == 2
    // H2CX12Z1Z2CX12H2 == X2
    operation H2CX12Z1Z2CX12H2(qs : Qubit[]) : Unit
    {
        H(qs[1]);
        CNOT(qs[0], qs[1]);
        Z(qs[0]);
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        H(qs[1]);
    }
    operation X2(qs : Qubit[]) : Unit
    {
        X(qs[1]);
    }

    operation H2CX12Z1Z2CX12H2_bug1(qs : Qubit[]) : Unit
    {
        H(qs[1]);
        CNOT(qs[0], qs[1]);
        //Z(qs[0]);     //bug
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        H(qs[1]);
    }
    operation H2CX12Z1Z2CX12H2_bug2(qs : Qubit[]) : Unit
    {
        //H(qs[1]);         //bug
        CNOT(qs[0], qs[1]);
        Z(qs[0]);
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        H(qs[1]);
    }
    operation H2CX12Z1Z2CX12H2_bug3(qs : Qubit[]) : Unit
    {
        H(qs[1]);
        CNOT(qs[0], qs[1]);
        Z(qs[0]);
        CNOT(qs[1], qs[0]);     //bug
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        H(qs[1]);
    }
    operation H2CX12Z1Z2CX12H2_bug4(qs : Qubit[]) : Unit
    {
        H(qs[1]);
        CNOT(qs[1], qs[0]);     //bug
        Z(qs[0]);
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        H(qs[1]);
    }
    operation H2CX12Z1Z2CX12H2_bug5(qs : Qubit[]) : Unit
    {
        H(qs[1]);
        CNOT(qs[0], qs[1]);
        Z(qs[0]);
        Z(qs[1]);
        CNOT(qs[0], qs[1]);
        let m = M(qs[0]);   //bug
        H(qs[1]);
    }



    // Length(qs) == 3
    operation QCtrlEndM(qs : Qubit[]) : Unit
    {
        CNOT(qs[0], qs[1]);
        CNOT(qs[1], qs[2]);
        let m0 = M(qs[0]);
        let m1 = M(qs[1]);
    }
    operation BeginMCCtrl(qs : Qubit[]) : Unit
    {
        let m0 = M(qs[0]);
        if (m0 == One)
        {
            X(qs[1]);
        }
        let m1 = M(qs[1]);
        if (m1 == One)
        {
            X(qs[2]);
        }
    }

    operation QCtrlEndM_bug1(qs : Qubit[]) : Unit
    {
        CNOT(qs[0], qs[1]);
        CNOT(qs[1], qs[2]);
        //let m0 = M(qs[0]);
        //let m1 = M(qs[1]);
    }
    operation QCtrlEndM_bug2(qs : Qubit[]) : Unit
    {
        CNOT(qs[1], qs[2]);
        CNOT(qs[0], qs[1]);
        let m0 = M(qs[0]);
        let m1 = M(qs[1]);
    }
    operation BeginMCCtrl_bug1(qs : Qubit[]) : Unit
    {
        let m1 = M(qs[1]);
        if (m1 == One)
        {
            X(qs[2]);
        }
        let m0 = M(qs[0]);
        if (m0 == One)
        {
            X(qs[1]);
        }
    }
    operation BeginMCCtrl_bug2(qs : Qubit[]) : Unit
    {
        let m0 = M(qs[0]);
        if (m0 == One)
        {
            Z(qs[1]);
        }
        let m1 = M(qs[1]);
        if (m1 == One)
        {
            Z(qs[2]);
        }
    }
    operation BeginMCCtrl_bug3(qs : Qubit[]) : Unit
    {
        let m0 = M(qs[0]);
        if (m0 == Zero)
        {
            X(qs[1]);
        }
        let m1 = M(qs[1]);
        if (m1 == Zero)
        {
            X(qs[2]);
        }
    }



}
