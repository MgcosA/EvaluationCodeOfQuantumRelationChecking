namespace MyTest.UnitarityAccelerated {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Quantum.QBlackBoxChecker;
    open Program.Circuit;
    open Program.QFT;
    open Program.QPE;
    open Program.CRot;
    open Program.Teleport;
    open MyTest.Config;

    //Return the number of pass
    operation UN_Cir1A() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(2, H2CX12Z1Z2CX12H2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_Cir1B() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(2, X2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_Empty() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(EmptySize(), Empty, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT1, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_CRot() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(CRotSize(), TestCRot, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_QFT_GM1() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_GM1, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT_GM2() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_GM2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_QFT_GM3() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_GM3, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }





    operation UN_non_Cir2A() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(3, QCtrlEndM, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_Cir2B() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(3, BeginMCCtrl, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_Reset() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(6, ResetAll, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_QFT_MM1() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_MM1, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM2() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_MM2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM3() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_MM3, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM4() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_MM4, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM5() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(QFTSize(), myQFT_MM5, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_CRot_bug1() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(CRotSize(), TestCRot_bug1, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_CRot_bug2() : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck_accelerated(CRotSize(), TestCRot_bug2, NOfPoints(), NOfTrace(), t, Epsilon());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

}
