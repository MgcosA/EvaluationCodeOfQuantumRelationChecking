namespace Program.Teleport {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;


    operation TeleportQubit(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qanc, qdest);
        CNOT(qsrc, qanc);
        H(qsrc);
        let m1 = M(qsrc);
        let m2 = M(qanc);
        if (m2 == One) { X(qdest); }
        if (m1 == One) { Z(qdest); }
    }

    operation TeleportQubit_bug1(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qanc, qdest);
        CNOT(qsrc, qanc);
        H(qsrc);
        //let m1 = M(qsrc);
        //let m2 = M(qanc);
        //if (m2 == One) { 
            X(qdest); 
        //}
        //if (m1 == One) { 
            Z(qdest);
		//}
    }
    operation TeleportQubit_bug2(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qanc, qdest);
        CNOT(qsrc, qanc);
        H(qsrc);
        let m1 = M(qsrc);
        let m2 = M(qanc);
        if (m2 == One) { Y(qdest); }
        if (m1 == One) { S(qdest); }
    }
    operation TeleportQubit_bug3(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qanc, qdest);
        CNOT(qsrc, qanc);
        //H(qsrc);
        let m1 = M(qsrc);
        let m2 = M(qanc);
        if (m2 == One) { X(qdest); }
        if (m1 == One) { Z(qdest); }
    }
    operation TeleportQubit_bug4(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qsrc, qanc);
        CNOT(qanc, qdest);
        H(qsrc);
        let m1 = M(qsrc);
        let m2 = M(qanc);
        if (m2 == One) { X(qdest); }
        if (m1 == One) { Z(qdest); }
    }
    operation TeleportQubit_bug5(qsrc : Qubit, qanc : Qubit, qdest : Qubit) : Unit
    {
        H(qanc);
        CNOT(qanc, qdest);
        CNOT(qsrc, qanc);
        H(qsrc);
        let m1 = M(qsrc);
        let m2 = M(qanc);
        if (m2 == One) { Z(qdest); }
        if (m1 == One) { X(qdest); }
    }


    operation Teleport(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }
    operation Teleport_bug1(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit_bug1(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }
    operation Teleport_bug2(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit_bug2(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }
    operation Teleport_bug3(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit_bug3(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }
    operation Teleport_bug4(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit_bug4(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }
    operation Teleport_bug5(Src : Qubit[], Dest : Qubit[]) : Unit
    {
        let n = Length(Dest);
        if (Length(Src) != n)
        { fail "Different length!"; }
        use Anc = Qubit[n]
        {
            for i in 0 .. n - 1
            { TeleportQubit_bug5(Src[i], Anc[i], Dest[i]); }
            ResetAll(Anc);
        }
    }

    operation Teleport_ID(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport(qs, qsanc);
            ResetAll(qs);
            Teleport(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_correct(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport(qs, qsanc);
            ResetAll(qs);
            Teleport(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_bug1(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport_bug1(qs, qsanc);
            ResetAll(qs);
            Teleport_bug1(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_bug2(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport_bug2(qs, qsanc);
            ResetAll(qs);
            Teleport_bug2(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_bug3(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport_bug3(qs, qsanc);
            ResetAll(qs);
            Teleport_bug3(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_bug4(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport_bug4(qs, qsanc);
            ResetAll(qs);
            Teleport_bug4(qsanc, qs);
            ResetAll(qsanc);
        }
    }
    operation Teleport_ID_bug5(qs : Qubit[]) : Unit
    {
        let N = Length(qs);
        use qsanc = Qubit[N]
        {
            Teleport_bug5(qs, qsanc);
            ResetAll(qs);
            Teleport_bug5(qsanc, qs);
            ResetAll(qsanc);
        }
    }


}
