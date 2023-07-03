namespace Program.QPE {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Arithmetic;
    open MyTest.Config;
    open Program.QFT;

    operation MultiGate(Gate : Qubit => Unit is Adj + Ctl, qs : Qubit[]) : Unit is Adj + Ctl
    {
        body (...)
        {
            for i in 0 .. Length(qs) - 1
            {
                Gate(qs[i]);
            }
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }

    operation MultiH(qs : Qubit[]) : Unit is Adj + Ctl
    {
        body (...)
        {
            MultiGate(H, qs);
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }


    //correct QPE
    operation myQPE(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        MultiH(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        myinvQFT(qCtrl);
    }

    //correct invQPE
    operation myinvQPE(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        myQFT1(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Adjoint Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        MultiH(qCtrl);
    }

    operation myinvQPE_bug1(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        myQFT1(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        MultiH(qCtrl);
    }
    operation myinvQPE_bug2(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        MultiH(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Adjoint Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        myQFT1(qCtrl);
    }
    operation myinvQPE_bug3(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        myQFT1(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Adjoint Upower([qCtrl[i]], (i, qTar));
        }
        MultiH(qCtrl);
    }
    operation myinvQPE_bug4(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        myQFT1(qCtrl);
        for i in 0 .. Length(qCtrl) - 2
        {
            Controlled Adjoint Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        MultiH(qCtrl);
    }
    operation myinvQPE_bug5(Upower : (Int, Qubit[]) => Unit is Adj + Ctl, qCtrl: Qubit[], qTar : Qubit[]) : Unit
    {
        myQFT1(qCtrl);
        for i in 0 .. Length(qCtrl) - 1
        {
            Controlled Adjoint Upower([qCtrl[i]], (2 ^ i, qTar));
        }
        let r = MultiM(qCtrl);
    }


    operation HSpower(k : Int, qs : Qubit[]) : Unit is Adj + Ctl
    {
        body (...)
        {
            for i in 1 .. k
            {
                H(qs[0]);
                S(qs[0]);
            }
        }
        adjoint auto;
        controlled auto;
        adjoint controlled auto;
    }


    operation TestQPEinvQPE(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }

    operation TestQPEinvQPE_bug1(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE_bug1(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }
    operation TestQPEinvQPE_bug2(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE_bug2(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }
    operation TestQPEinvQPE_bug3(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE_bug3(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }
    operation TestQPEinvQPE_bug4(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE_bug4(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }
    operation TestQPEinvQPE_bug5(qs : Qubit[]) : Unit
    {
        let nc = QPECtrlSize();
        let nt = QPETarSize();
        myinvQPE_bug5(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
        myQPE(HSpower, qs[0 .. nc - 1], qs[nc .. nc + nt - 1]);
    }
    
}
