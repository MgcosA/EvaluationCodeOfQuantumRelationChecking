namespace ParaResearch.TTrace {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Program.Circuit;
    open Program.QFT;
    open Program.CRot;
    open Program.QPE;
    open Program.Teleport;
    open Quantum.QBlackBoxChecker;
    open MyTest.Config;


    //Return (number of pass, number of triggered by tricks)

    //--------------EQ----------------

    operation EQ_Cir1_Correct(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir1_Bug1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2_bug1, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir1_Bug2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2_bug2, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir1_Bug3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2_bug3, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir1_Bug4(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2_bug4, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir1_Bug5(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(2, H2CX12Z1Z2CX12H2_bug5, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }


    operation EQ_Cir2_Correct(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM, BeginMCCtrl, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir2_Bug1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM_bug1, BeginMCCtrl, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir2_Bug2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM_bug2, BeginMCCtrl, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir2_Bug3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM, BeginMCCtrl_bug1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir2_Bug4(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM, BeginMCCtrl_bug2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_Cir2_Bug5(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(3, QCtrlEndM, BeginMCCtrl_bug3, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }


    operation EQ_TwoQFT_Correct(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT1, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_TwoQFT_bug1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT_MM1, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_TwoQFT_bug2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT_MM2, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_TwoQFT_bug3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT_MM3, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_TwoQFT_bug4(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT_MM4, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_TwoQFT_bug5(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), myQFT_MM5, myQFT2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }


    operation EQ_QFTIQFTwithEmpty_Correct(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_correct, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_QFTIQFTwithEmpty_bug1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_bug1, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_QFTIQFTwithEmpty_bug2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_bug2, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_QFTIQFTwithEmpty_bug3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_bug3, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_QFTIQFTwithEmpty_bug4(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_bug4, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation EQ_QFTIQFTwithEmpty_bug5(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = EquivalenceCheck_eva(QFTSize(), QFTiQFT_bug5, Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }


    //------------UN-------------

    operation UN_Cir1A(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(2, H2CX12Z1Z2CX12H2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_Cir1B(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(2, X2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_Empty(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(EmptySize(), Empty, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_QFT(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_CRot(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(CRotSize(), TestCRot, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }

    operation UN_QFT_GM1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_GM1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_QFT_GM2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_GM1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_QFT_GM3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_GM1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }



    operation UN_non_Cir2A(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(3, QCtrlEndM, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_Cir2B(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(3, BeginMCCtrl, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }

    operation UN_non_Reset(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(6, ResetAll, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }

    operation UN_non_QFT_MM1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_MM1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_QFT_MM2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_MM2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_QFT_MM3(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_MM3, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_QFT_MM4(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_MM4, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_QFT_MM5(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(QFTSize(), myQFT_MM5, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }

    operation UN_non_CRot_bug1(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(CRotSize(), TestCRot_bug1, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }
    operation UN_non_CRot_bug2(ttr : Int) : (Int, Int)
    {
        mutable npass = 0;
        mutable ntrigger = 0;
        let tswap = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let (r, trig) = UnitarityCheck_eva(CRotSize(), TestCRot_bug2, NOfPoints(), ttr, tswap, Epsilon());
            if (r)
            { set npass = npass + 1; }
            if (trig)
            { set ntrigger = ntrigger + 1; }
        }
        return (npass, ntrigger);
    }

    //--------------T trace-------------

    operation TTrace(Proc : (Int) => (Int, Int)) : Unit
    {
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let k7 = 15;
        let k8 = 20;
        let k9 = 30;
        let k10 = 50;
        let (np1, nt1) = Proc(k1);
        Message($"k = {k1};   nPass = {np1};   nTrigger = {nt1}");
        let (np2, nt2) = Proc(k2);
        Message($"k = {k2};   nPass = {np2};   nTrigger = {nt2}");
        let (np3, nt3) = Proc(k3);
        Message($"k = {k3};   nPass = {np3};   nTrigger = {nt3}");
        let (np4, nt4) = Proc(k4);
        Message($"k = {k4};   nPass = {np4};   nTrigger = {nt4}");
        let (np5, nt5) = Proc(k5);
        Message($"k = {k5};   nPass = {np5};   nTrigger = {nt5}");
        let (np6, nt6) = Proc(k6);
        Message($"k = {k6};   nPass = {np6};   nTrigger = {nt6}");
        let (np7, nt7) = Proc(k7);
        Message($"k = {k7};   nPass = {np7};   nTrigger = {nt7}");
        let (np8, nt8) = Proc(k8);
        Message($"k = {k8};   nPass = {np8};   nTrigger = {nt8}");
        let (np9, nt9) = Proc(k9);
        Message($"k = {k9};   nPass = {np9};   nTrigger = {nt9}");
        let (np10, nt10) = Proc(k10);
        Message($"k = {k10};   nPass = {np10};   nTrigger = {nt10}");
    }

    //--------------EQ----------------
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_Correct() : Unit
    {
        TTrace(EQ_Cir1_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug1() : Unit
    {
        TTrace(EQ_Cir1_Bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug2() : Unit
    {
        TTrace(EQ_Cir1_Bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug3() : Unit
    {
        TTrace(EQ_Cir1_Bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug4() : Unit
    {
        TTrace(EQ_Cir1_Bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug5() : Unit
    {
        TTrace(EQ_Cir1_Bug5);
    }

    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_Correct() : Unit
    {
        TTrace(EQ_Cir2_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug1() : Unit
    {
        TTrace(EQ_Cir2_Bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug2() : Unit
    {
        TTrace(EQ_Cir2_Bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug3() : Unit
    {
        TTrace(EQ_Cir2_Bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug4() : Unit
    {
        TTrace(EQ_Cir2_Bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug5() : Unit
    {
        TTrace(EQ_Cir2_Bug5);
    }


    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_Correct() : Unit
    {
        TTrace(EQ_TwoQFT_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug1() : Unit
    {
        TTrace(EQ_TwoQFT_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug2() : Unit
    {
        TTrace(EQ_TwoQFT_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug3() : Unit
    {
        TTrace(EQ_TwoQFT_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug4() : Unit
    {
        TTrace(EQ_TwoQFT_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug5() : Unit
    {
        TTrace(EQ_TwoQFT_bug5);
    }


    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_correct() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug1() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug2() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug3() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug4() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug5() : Unit
    {
        TTrace(EQ_QFTIQFTwithEmpty_bug5);
    }


    //-------------UN-------------------
    @Test("QuantumSimulator")
    operation Test_UN_Cir1A() : Unit
    {
        TTrace(UN_Cir1A);
    }
    @Test("QuantumSimulator")
    operation Test_UN_Cir1B() : Unit
    {
        TTrace(UN_Cir1B);
    }
    @Test("QuantumSimulator")
    operation Test_UN_Empty() : Unit
    {
        TTrace(UN_Empty);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT() : Unit
    {
        TTrace(UN_QFT);
    }
    @Test("QuantumSimulator")
    operation Test_UN_CRot() : Unit
    {
        TTrace(UN_CRot);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM1() : Unit
    {
        TTrace(UN_QFT_GM1);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM2() : Unit
    {
        TTrace(UN_QFT_GM2);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM3() : Unit
    {
        TTrace(UN_QFT_GM3);
    }


    @Test("QuantumSimulator")
    operation Test_nonUN_Cir2A() : Unit
    {
        TTrace(UN_non_Cir2A);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_Cir2B() : Unit
    {
        TTrace(UN_non_Cir2B);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_Reset() : Unit
    {
        TTrace(UN_non_Reset);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM1() : Unit
    {
        TTrace(UN_non_QFT_MM1);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM2() : Unit
    {
        TTrace(UN_non_QFT_MM2);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM3() : Unit
    {
        TTrace(UN_non_QFT_MM3);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM4() : Unit
    {
        TTrace(UN_non_QFT_MM4);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM5() : Unit
    {
        TTrace(UN_non_QFT_MM5);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_CRot_bug1() : Unit
    {
        TTrace(UN_non_CRot_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_CRot_bug2() : Unit
    {
        TTrace(UN_non_CRot_bug2);
    }
}