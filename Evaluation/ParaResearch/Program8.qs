namespace ParaResearch.Program8 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open Program.QFT;
    open Quantum.QBlackBoxChecker;
    open MyTest.Config;

    operation EQ_TwoQFT_Bug1(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT_MM1, myQFT2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_Bug2(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT_MM2, myQFT2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_Bug3(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT_MM3, myQFT2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_Bug4(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT_MM4, myQFT2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation EQ_TwoQFT_Bug5(k : Int, epsilon : Double) : Int
    {
        mutable npass = 0;
        let t = TofEquivalence(k, Alpha2(), epsilon);
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = EquivalenceCheck(QFTSize(), myQFT_MM5, myQFT2, k, t, epsilon);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_TwoQFT_Bug1() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_TwoQFT_Bug1() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_TwoQFT_Bug1() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_TwoQFT_Bug1() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug1(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug1(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug1(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug1(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug1(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug1(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_TwoQFT_Bug2() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_TwoQFT_Bug2() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_TwoQFT_Bug2() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_TwoQFT_Bug2() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug2(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug2(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug2(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug2(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug2(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug2(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_TwoQFT_Bug3() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_TwoQFT_Bug3() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_TwoQFT_Bug3() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_TwoQFT_Bug3() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug3(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug3(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug3(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug3(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug3(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug3(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_TwoQFT_Bug4() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_TwoQFT_Bug4() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_TwoQFT_Bug4() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_TwoQFT_Bug4() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug4(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug4(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug4(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug4(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug4(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug4(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }


    @Test("QuantumSimulator")
    operation Para_eps005_EQ_TwoQFT_Bug5() : Unit
    {
        let eps = 0.05;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps010_EQ_TwoQFT_Bug5() : Unit
    {
        let eps = 0.1;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps015_EQ_TwoQFT_Bug5() : Unit
    {
        let eps = 0.15;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }

    @Test("QuantumSimulator")
    operation Para_eps020_EQ_TwoQFT_Bug5() : Unit
    {
        let eps = 0.2;
        let k1 = 1;
        let k2 = 2;
        let k3 = 3;
        let k4 = 4;
        let k5 = 6;
        let k6 = 10;
        let np1 = EQ_TwoQFT_Bug5(k1, eps);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = EQ_TwoQFT_Bug5(k2, eps);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = EQ_TwoQFT_Bug5(k3, eps);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = EQ_TwoQFT_Bug5(k4, eps);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = EQ_TwoQFT_Bug5(k5, eps);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = EQ_TwoQFT_Bug5(k6, eps);
        Message($"k = {k6};   nPass = {np6}");
    }
}
