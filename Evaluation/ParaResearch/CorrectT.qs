namespace ParaResearch.TResearch {

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

    operation EQ_Cir1_Correct(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(2, H2CX12Z1Z2CX12H2, X2, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation EQ_Cir2_Correct(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM, BeginMCCtrl, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation EQ_TwoQFT_Correct(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT1, myQFT2, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation EQ_QFTIQFTwithEmpty_Correct(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), QFTiQFT_correct, Empty, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    //Return the number of pass
    operation UN_Cir1A(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(2, H2CX12Z1Z2CX12H2, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_Cir1B(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(2, X2, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_Empty(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(EmptySize(), Empty, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT1, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_CRot(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(CRotSize(), TestCRot, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_QFT_GM1(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_GM1, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT_GM2(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_GM2, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT_GM3(t : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_GM3, NOfPoints(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    //-------------T pass-------------
    operation TPass_EQ(Proc : Int => Int) : Unit
    {
        let t0 = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        let t1 = t0 * 5 / 100;
        let t2 = t0 * 1 / 10;
        let t3 = t0 * 2 / 10;
        let t4 = t0 * 3 / 10;
        let t5 = t0 * 4 / 10;
        let t6 = t0 * 5 / 10;
        let t7 = t0 * 7 / 10;
        let t8 = t0 * 9 / 10;
        let np1 = Proc(t1);
        Message($"t = {t1};   nPass = {np1}");
        let np2 = Proc(t2);
        Message($"t = {t2};   nPass = {np2}");
        let np3 = Proc(t3);
        Message($"t = {t3};   nPass = {np3}");
        let np4 = Proc(t4);
        Message($"t = {t4};   nPass = {np4}");
        let np5 = Proc(t5);
        Message($"t = {t5};   nPass = {np5}");
        let np6 = Proc(t6);
        Message($"t = {t6};   nPass = {np6}");
        let np7 = Proc(t7);
        Message($"t = {t7};   nPass = {np7}");
        //let np8 = Proc(t8);
        //Message($"t = {t8};   nPass = {np8}");
        //let np0 = Proc(t0);
        //Message($"t0 = {t0};   nPass = {np0}");
    }

    operation TPass_UN(Proc : Int => Int) : Unit
    {
        let t0 = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        let t1 = t0 * 5 / 100;
        let t2 = t0 * 1 / 10;
        let t3 = t0 * 2 / 10;
        let t4 = t0 * 3 / 10;
        let t5 = t0 * 4 / 10;
        let t6 = t0 * 5 / 10;
        let t7 = t0 * 7 / 10;
        let t8 = t0 * 9 / 10;
        let np1 = Proc(t1);
        Message($"t = {t1};   nPass = {np1}");
        let np2 = Proc(t2);
        Message($"t = {t2};   nPass = {np2}");
        let np3 = Proc(t3);
        Message($"t = {t3};   nPass = {np3}");
        let np4 = Proc(t4);
        Message($"t = {t4};   nPass = {np4}");
        let np5 = Proc(t5);
        Message($"t = {t5};   nPass = {np5}");
        let np6 = Proc(t6);
        Message($"t = {t6};   nPass = {np6}");
        let np7 = Proc(t7);
        Message($"t = {t7};   nPass = {np7}");
        let np8 = Proc(t8);
        Message($"t = {t8};   nPass = {np8}");
        let np0 = Proc(t0);
        Message($"t0 = {t0};   nPass = {np0}");
    }

    
    @Test("QuantumSimulator")
    operation T_EQ_Cir1() : Unit
    {
        TPass_EQ(EQ_Cir1_Correct);
    }

    @Test("QuantumSimulator")
    operation T_EQ_Cir2() : Unit
    {
        TPass_EQ(EQ_Cir2_Correct);
    }

    @Test("QuantumSimulator")
    operation T_EQ_TwoQFT() : Unit
    {
        TPass_EQ(EQ_TwoQFT_Correct);
    }

    @Test("QuantumSimulator")
    operation T_EQ_QFTIQFTwithEmpty() : Unit
    {
        TPass_EQ(EQ_QFTIQFTwithEmpty_Correct);
    }

    @Test("QuantumSimulator")
    operation T_UN_Cir1A() : Unit
    {
        TPass_UN(UN_Cir1A);
    }

    @Test("QuantumSimulator")
    operation T_UN_Cir1B() : Unit
    {
        TPass_UN(UN_Cir1B);
    }

    @Test("QuantumSimulator")
    operation T_UN_Empty() : Unit
    {
        TPass_UN(UN_Empty);
    }

    @Test("QuantumSimulator")
    operation T_UN_QFT() : Unit
    {
        TPass_UN(UN_QFT);
    }

    @Test("QuantumSimulator")
    operation T_UN_CRot() : Unit
    {
        TPass_UN(UN_CRot);
    }

    @Test("QuantumSimulator")
    operation T_UN_QFT_GM1() : Unit
    {
        TPass_UN(UN_QFT_GM1);
    }

    @Test("QuantumSimulator")
    operation T_UN_QFT_GM2() : Unit
    {
        TPass_UN(UN_QFT_GM2);
    }

    @Test("QuantumSimulator")
    operation T_UN_QFT_GM3() : Unit
    {
        TPass_UN(UN_QFT_GM3);
    }
}
