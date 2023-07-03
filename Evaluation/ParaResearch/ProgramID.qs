namespace ParaResearch.ProgramID {

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

    operation ID_Empty_bug1(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(EmptySize(), Empty_bug1, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Empty_bug2(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(EmptySize(), Empty_bug2, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation ID_QFTiQFT_bug1(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug1, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug2(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug2, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug3(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug3, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug4(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug4, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug5(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug5, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation ID_QPEiQPE_bug1(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug1, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug2(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug2, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug3(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug3, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug4(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug4, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug5(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug5, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation ID_Teleport_bug1(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug1, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug2(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug2, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug3(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug3, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug4(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug4, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug5(k : Int) : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug5, k);
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }



    @Test("QuantumSimulator")
    operation Para_ID_Empty_bug1() : Unit
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
        let np1 = ID_Empty_bug1(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Empty_bug1(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Empty_bug1(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Empty_bug1(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Empty_bug1(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Empty_bug1(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Empty_bug1(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Empty_bug1(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Empty_bug1(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Empty_bug1(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_Empty_bug2() : Unit
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
        let np1 = ID_Empty_bug2(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Empty_bug2(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Empty_bug2(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Empty_bug2(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Empty_bug2(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Empty_bug2(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Empty_bug2(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Empty_bug2(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Empty_bug2(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Empty_bug2(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QFTiQFT_bug1() : Unit
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
        let np1 = ID_QFTiQFT_bug1(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QFTiQFT_bug1(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QFTiQFT_bug1(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QFTiQFT_bug1(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QFTiQFT_bug1(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QFTiQFT_bug1(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QFTiQFT_bug1(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QFTiQFT_bug1(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QFTiQFT_bug1(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QFTiQFT_bug1(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QFTiQFT_bug2() : Unit
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
        let np1 = ID_QFTiQFT_bug2(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QFTiQFT_bug2(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QFTiQFT_bug2(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QFTiQFT_bug2(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QFTiQFT_bug2(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QFTiQFT_bug2(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QFTiQFT_bug2(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QFTiQFT_bug2(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QFTiQFT_bug2(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QFTiQFT_bug2(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QFTiQFT_bug3() : Unit
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
        let np1 = ID_QFTiQFT_bug3(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QFTiQFT_bug3(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QFTiQFT_bug3(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QFTiQFT_bug3(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QFTiQFT_bug3(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QFTiQFT_bug3(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QFTiQFT_bug3(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QFTiQFT_bug3(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QFTiQFT_bug3(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QFTiQFT_bug3(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QFTiQFT_bug4() : Unit
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
        let np1 = ID_QFTiQFT_bug4(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QFTiQFT_bug4(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QFTiQFT_bug4(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QFTiQFT_bug4(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QFTiQFT_bug4(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QFTiQFT_bug4(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QFTiQFT_bug4(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QFTiQFT_bug4(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QFTiQFT_bug4(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QFTiQFT_bug4(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QFTiQFT_bug5() : Unit
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
        let np1 = ID_QFTiQFT_bug5(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QFTiQFT_bug5(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QFTiQFT_bug5(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QFTiQFT_bug5(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QFTiQFT_bug5(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QFTiQFT_bug5(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QFTiQFT_bug5(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QFTiQFT_bug5(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QFTiQFT_bug5(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QFTiQFT_bug5(k10);
        Message($"k = {k10};   nPass = {np10}");
    }


    @Test("QuantumSimulator")
    operation Para_ID_QPEiQPE_bug1() : Unit
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
        let np1 = ID_QPEiQPE_bug1(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QPEiQPE_bug1(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QPEiQPE_bug1(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QPEiQPE_bug1(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QPEiQPE_bug1(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QPEiQPE_bug1(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QPEiQPE_bug1(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QPEiQPE_bug1(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QPEiQPE_bug1(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QPEiQPE_bug1(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QPEiQPE_bug2() : Unit
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
        let np1 = ID_QPEiQPE_bug2(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QPEiQPE_bug2(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QPEiQPE_bug2(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QPEiQPE_bug2(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QPEiQPE_bug2(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QPEiQPE_bug2(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QPEiQPE_bug2(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QPEiQPE_bug2(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QPEiQPE_bug2(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QPEiQPE_bug2(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QPEiQPE_bug3() : Unit
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
        let np1 = ID_QPEiQPE_bug3(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QPEiQPE_bug3(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QPEiQPE_bug3(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QPEiQPE_bug3(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QPEiQPE_bug3(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QPEiQPE_bug3(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QPEiQPE_bug3(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QPEiQPE_bug3(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QPEiQPE_bug3(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QPEiQPE_bug3(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QPEiQPE_bug4() : Unit
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
        let np1 = ID_QPEiQPE_bug4(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QPEiQPE_bug4(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QPEiQPE_bug4(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QPEiQPE_bug4(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QPEiQPE_bug4(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QPEiQPE_bug4(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QPEiQPE_bug4(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QPEiQPE_bug4(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QPEiQPE_bug4(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QPEiQPE_bug4(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_QPEiQPE_bug5() : Unit
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
        let np1 = ID_QPEiQPE_bug5(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_QPEiQPE_bug5(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_QPEiQPE_bug5(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_QPEiQPE_bug5(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_QPEiQPE_bug5(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_QPEiQPE_bug5(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_QPEiQPE_bug5(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_QPEiQPE_bug5(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_QPEiQPE_bug5(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_QPEiQPE_bug5(k10);
        Message($"k = {k10};   nPass = {np10}");
    }


    @Test("QuantumSimulator")
    operation Para_ID_Teleport_bug1() : Unit
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
        let np1 = ID_Teleport_bug1(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Teleport_bug1(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Teleport_bug1(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Teleport_bug1(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Teleport_bug1(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Teleport_bug1(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Teleport_bug1(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Teleport_bug1(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Teleport_bug1(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Teleport_bug1(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_Teleport_bug2() : Unit
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
        let np1 = ID_Teleport_bug2(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Teleport_bug2(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Teleport_bug2(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Teleport_bug2(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Teleport_bug2(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Teleport_bug2(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Teleport_bug2(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Teleport_bug2(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Teleport_bug2(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Teleport_bug2(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_Teleport_bug3() : Unit
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
        let np1 = ID_Teleport_bug3(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Teleport_bug3(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Teleport_bug3(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Teleport_bug3(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Teleport_bug3(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Teleport_bug3(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Teleport_bug3(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Teleport_bug3(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Teleport_bug3(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Teleport_bug3(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_Teleport_bug4() : Unit
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
        let np1 = ID_Teleport_bug4(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Teleport_bug4(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Teleport_bug4(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Teleport_bug4(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Teleport_bug4(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Teleport_bug4(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Teleport_bug4(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Teleport_bug4(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Teleport_bug4(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Teleport_bug4(k10);
        Message($"k = {k10};   nPass = {np10}");
    }

    @Test("QuantumSimulator")
    operation Para_ID_Teleport_bug5() : Unit
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
        let np1 = ID_Teleport_bug5(k1);
        Message($"k = {k1};   nPass = {np1}");
        let np2 = ID_Teleport_bug5(k2);
        Message($"k = {k2};   nPass = {np2}");
        let np3 = ID_Teleport_bug5(k3);
        Message($"k = {k3};   nPass = {np3}");
        let np4 = ID_Teleport_bug5(k4);
        Message($"k = {k4};   nPass = {np4}");
        let np5 = ID_Teleport_bug5(k5);
        Message($"k = {k5};   nPass = {np5}");
        let np6 = ID_Teleport_bug5(k6);
        Message($"k = {k6};   nPass = {np6}");
        let np7 = ID_Teleport_bug5(k7);
        Message($"k = {k7};   nPass = {np7}");
        let np8 = ID_Teleport_bug5(k8);
        Message($"k = {k8};   nPass = {np8}");
        let np9 = ID_Teleport_bug5(k9);
        Message($"k = {k9};   nPass = {np9}");
        let np10 = ID_Teleport_bug5(k10);
        Message($"k = {k10};   nPass = {np10}");
    }
}
