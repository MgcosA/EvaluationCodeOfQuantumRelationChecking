namespace MyTest.EquivalenceAccelerated {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Quantum.QBlackBoxChecker;
    open Program.Circuit;
    open Program.QFT;
    open MyTest.Config;


    //Return the number of pass
    operation EQ_Cir1_Correct() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir1_Bug1() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2_bug1, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir1_Bug2() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2_bug2, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir1_Bug3() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2_bug3, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir1_Bug4() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2_bug4, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir1_Bug5() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(2, H2CX12Z1Z2CX12H2_bug5, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }



    operation EQ_Cir2_Correct() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM, BeginMCCtrl, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug1() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM_bug1, BeginMCCtrl, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug2() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM_bug2, BeginMCCtrl, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug3() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM, BeginMCCtrl_bug1, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug4() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM, BeginMCCtrl_bug2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug5() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(3, QCtrlEndM, BeginMCCtrl_bug3, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation EQ_TwoQFT_Correct() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT1, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_bug1() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT_MM1, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_bug2() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT_MM2, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_bug3() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT_MM3, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_bug4() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT_MM4, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_bug5() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), myQFT_MM5, myQFT2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation EQ_QFTIQFTwithEmpty_Correct() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_correct, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_QFTIQFTwithEmpty_bug1() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_bug1, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_QFTIQFTwithEmpty_bug2() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_bug2, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_QFTIQFTwithEmpty_bug3() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_bug3, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_QFTIQFTwithEmpty_bug4() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_bug4, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_QFTIQFTwithEmpty_bug5() : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck_accelerated(QFTSize(), QFTiQFT_bug5, Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


}
