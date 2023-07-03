namespace Program.QFT {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Measurement;

    operation CRk(qctrl: Qubit, k: Int, qtarget: Qubit) : Unit is Adj
    {
        body(...)
        {
            let theta = 2.0 * PI() / IntAsDouble(2^k);
            Controlled R1([qctrl], (theta, qtarget));
        }
        adjoint auto;
    }

    operation invCRk(qctrl: Qubit, k: Int, qtarget: Qubit) : Unit is Adj
    {
        body(...)
        {
            let theta = -2.0 * PI() / IntAsDouble(2^k);
            Controlled R1([qctrl], (theta, qtarget));
        }
        adjoint auto;
    }

    operation Reverse(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n / 2 - 1
        {
            SWAP(qs[i], qs[n - i - 1]);
        }
    }

    //QFT implementation 1
    operation myQFT1(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //QFT implementation 2
    operation myQFT2(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //Correct invQFT Program
    operation myinvQFT(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        Reverse(qs);
        H(qs[n - 1]);
        for i in n - 2 .. -1 .. 0
        {
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i + 1;
                invCRk(qs[j], k, qs[i]);
            }
            H(qs[i]);
        }
    }


    //---------------------------bugs-----------------------


    operation myQFT_GM1(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            //H(qs[i]);    //bug: miss H
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //Wrong Program GM2: Add gate Z
    operation myQFT_GM2(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            Z(qs[i]);       //bug
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //Wrong Program GM3: Change gate
    operation myQFT_GM3(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        Y(qs[n - 1]);    //bug: H -> Y
        Reverse(qs);
    }


    //------bug QFT1--------------
    //Wrong Program MM1: change H to measurement
    operation myQFT_MM1(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            let m = M(qs[i]);       //bug: H -> M
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //Wrong Program MM2: add measurement at begin
    operation myQFT_MM2(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        let m = M(qs[n - 1]);       //bug
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    //Wrong Program MM3: add measurement at end
    operation myQFT_MM3(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
        let m = M(qs[0]);       //bug
    }

    operation myQFT_MM4(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        let m = MultiM(qs);     //bug
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }

    operation myQFT_MM5(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        for i in 0 .. n - 2
        {
            H(qs[i]);
            for j in i + 1 .. n - 1
            {
                let m = M(qs[j]);   //bug
                let k = j - i + 1;
                CRk(qs[j], k, qs[i]);
            }
        }
        H(qs[n - 1]);
        Reverse(qs);
    }


    //Wrong Program SM2: miss reverse
    operation myinvQFT_bug1(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        //Reverse(qs);    //bug: miss Reverse()
        H(qs[n - 1]);
        for i in n - 2 .. -1 .. 0
        {
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i + 1;
                invCRk(qs[j], k, qs[i]);
            }
            H(qs[i]);
        }
    }

    //Wrong Program GM1: wrong place of H gate
    operation myinvQFT_bug2(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        Reverse(qs);
        H(qs[n - 1]);
        for i in n - 2 .. -1 .. 0
        {
            H(qs[i]);   //bug: wrong place of H
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i + 1;
                invCRk(qs[j], k, qs[i]);
            }
        }
    }

    operation myinvQFT_bug3(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        Reverse(qs);
        //H(qs[n - 1]);
        for i in n - 2 .. -1 .. 0
        {
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i + 1;
                invCRk(qs[j], k, qs[i]);
            }
            //H(qs[i]);
        }
    }

    //Wrong Program CM3: wrong classical index
    operation myinvQFT_bug4(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        Reverse(qs);
        H(qs[0]);       //bug: n-1 -> 0
        for i in n - 2 .. -1 .. 0
        {
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i - 1;
                invCRk(qs[j], k, qs[i]);
            }
            H(qs[i]);
        }
    }

    //Wrong Program MM2: add measurement
    operation myinvQFT_bug5(qs : Qubit[]) : Unit
    {
        let n = Length(qs);
        Reverse(qs);
        H(qs[n - 1]);
        for i in n - 2 .. -1 .. 0
        {
            for j in n - 1 .. -1 .. i + 1
            {
                let k = j - i - 1;
                invCRk(qs[j], k, qs[i]);
            }
            H(qs[i]);
        }
        let m = M(qs[0]);       //bug
    }

    

    // QFTIQFT_correct
    operation QFTiQFT_correct(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT(qs);
    }
    operation QFTiQFT_bug1(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT_bug1(qs);
    }
    operation QFTiQFT_bug2(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT_bug2(qs);
    }
    operation QFTiQFT_bug3(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT_bug3(qs);
    }
    operation QFTiQFT_bug4(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT_bug4(qs);
    }
    operation QFTiQFT_bug5(qs : Qubit[]) : Unit
    {
        myQFT1(qs);
        myinvQFT_bug5(qs);
    }


    
}
