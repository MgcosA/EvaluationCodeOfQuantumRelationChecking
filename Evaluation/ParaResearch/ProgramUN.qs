namespace ParaResearch.ProgramUN {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Program.Circuit;
    open Program.QFT;
    open Program.CRot;
    open Quantum.QBlackBoxChecker;
    open MyTest.Config;

    operation UN_non_Cir2A(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(3, QCtrlEndM, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_Cir2B(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(3, BeginMCCtrl, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_Reset(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(6, ResetAll, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_QFT_MM1(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_MM1, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM2(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_MM2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM3(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_MM3, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM4(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_MM4, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_QFT_MM5(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(QFTSize(), myQFT_MM5, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }

    operation UN_non_CRot_bug1(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(CRotSize(), TestCRot_bug1, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation UN_non_CRot_bug2(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofUnitarity(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = UnitarityCheck(CRotSize(), TestCRot_bug2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }



    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_Cir2A() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_Cir2A() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_Cir2A() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_Cir2A() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_Cir2B() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_Cir2B() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_Cir2B() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_Cir2B() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_Reset() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_Reset() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_Reset() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_Reset() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_Cir2B(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_Cir2B(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_Cir2B(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_Cir2B(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_Cir2B(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_QFT_MM1() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_QFT_MM1() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_QFT_MM1() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_QFT_MM1() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }



    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_QFT_MM2() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_QFT_MM2() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_QFT_MM2() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_QFT_MM2() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_QFT_MM3() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_QFT_MM3() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_QFT_MM3() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_QFT_MM3() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_QFT_MM4() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_QFT_MM4() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_QFT_MM4() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_QFT_MM4() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_QFT_MM5() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_QFT_MM5() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_QFT_MM5() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_QFT_MM5() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_QFT_MM5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_QFT_MM5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_QFT_MM5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_QFT_MM5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_QFT_MM5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }



    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_CRot_bug1() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_CRot_bug1() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_CRot_bug1() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_CRot_bug1() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_UN_non_CRot_bug2() : Unit
    {
        let eps = 0.05;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_UN_non_CRot_bug2() : Unit
    {
        let eps = 0.10;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_UN_non_CRot_bug2() : Unit
    {
        let eps = 0.15;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_UN_non_CRot_bug2() : Unit
    {
        let eps = 0.20;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np2 = UN_non_CRot_bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = UN_non_CRot_bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = UN_non_CRot_bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = UN_non_CRot_bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = UN_non_CRot_bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }
}
