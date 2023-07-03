namespace ParaResearch.Program6_7 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Program.Circuit;
    open Quantum.QBlackBoxChecker;
    open MyTest.Config;

    operation EQ_Cir2_Bug1(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM_bug1, BeginMCCtrl, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug2(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM_bug2, BeginMCCtrl, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug3(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM, BeginMCCtrl_bug1, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug4(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM, BeginMCCtrl_bug2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_Cir2_Bug5(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(3, QCtrlEndM, BeginMCCtrl_bug3, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_Cir2_Bug1() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_Cir2_Bug1() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_Cir2_Bug1() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_Cir2_Bug1() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_Cir2_Bug2() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_Cir2_Bug2() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_Cir2_Bug2() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_Cir2_Bug2() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_Cir2_Bug3() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_Cir2_Bug3() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_Cir2_Bug3() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_Cir2_Bug3() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_Cir2_Bug4() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_Cir2_Bug4() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_Cir2_Bug4() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_Cir2_Bug4() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_Cir2_Bug5() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_Cir2_Bug5() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_Cir2_Bug5() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_Cir2_Bug5() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_Cir2_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_Cir2_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_Cir2_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_Cir2_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_Cir2_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_Cir2_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }
}
