namespace MyTest.Equivalence
{

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open MyTest.Config;

    //-------------EQ-------------------

    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_Correct() : Unit
    {
        RunTest(EQ_Cir1_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug1() : Unit
    {
        RunTest(EQ_Cir1_Bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug2() : Unit
    {
        RunTest(EQ_Cir1_Bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug3() : Unit
    {
        RunTest(EQ_Cir1_Bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug4() : Unit
    {
        RunTest(EQ_Cir1_Bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir1_bug5() : Unit
    {
        RunTest(EQ_Cir1_Bug5);
    }

    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_Correct() : Unit
    {
        RunTest(EQ_Cir2_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug1() : Unit
    {
        RunTest(EQ_Cir2_Bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug2() : Unit
    {
        RunTest(EQ_Cir2_Bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug3() : Unit
    {
        RunTest(EQ_Cir2_Bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug4() : Unit
    {
        RunTest(EQ_Cir2_Bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_Cir2_bug5() : Unit
    {
        RunTest(EQ_Cir2_Bug5);
    }


    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_Correct() : Unit
    {
        RunTest(EQ_TwoQFT_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug1() : Unit
    {
        RunTest(EQ_TwoQFT_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug2() : Unit
    {
        RunTest(EQ_TwoQFT_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug3() : Unit
    {
        RunTest(EQ_TwoQFT_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug4() : Unit
    {
        RunTest(EQ_TwoQFT_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_TwoQFT_bug5() : Unit
    {
        RunTest(EQ_TwoQFT_bug5);
    }


    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_correct() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug1() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug2() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug3() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug4() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_EQ_QFTIQFTwithEmpty_bug5() : Unit
    {
        RunTest(EQ_QFTIQFTwithEmpty_bug5);
    }

}

namespace MyTest.Identity
{

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open MyTest.Config;

    @Test("QuantumSimulator")
    operation Test_ID_Empty_correct() : Unit
    {
        RunTest(ID_Empty_Correct);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Empty_bug1() : Unit
    {
        RunTest(ID_Empty_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Empty_bug2() : Unit
    {
        RunTest(ID_Empty_bug2);
    }

    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_correct() : Unit
    {
        RunTest(ID_QFTiQFT_correct);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_bug1() : Unit
    {
        RunTest(ID_QFTiQFT_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_bug2() : Unit
    {
        RunTest(ID_QFTiQFT_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_bug3() : Unit
    {
        RunTest(ID_QFTiQFT_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_bug4() : Unit
    {
        RunTest(ID_QFTiQFT_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QFTiQFT_bug5() : Unit
    {
        RunTest(ID_QFTiQFT_bug5);
    }


    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_correct() : Unit
    {
        RunTest(ID_QPEiQPE_correct);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_bug1() : Unit
    {
        RunTest(ID_QPEiQPE_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_bug2() : Unit
    {
        RunTest(ID_QPEiQPE_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_bug3() : Unit
    {
        RunTest(ID_QPEiQPE_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_bug4() : Unit
    {
        RunTest(ID_QPEiQPE_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_ID_QPEiQPE_bug5() : Unit
    {
        RunTest(ID_QPEiQPE_bug5);
    }


    @Test("QuantumSimulator")
    operation Test_ID_Teleport_correct() : Unit
    {
        RunTest(ID_Teleport_correct);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Teleport_bug1() : Unit
    {
        RunTest(ID_Teleport_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Teleport_bug2() : Unit
    {
        RunTest(ID_Teleport_bug2);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Teleport_bug3() : Unit
    {
        RunTest(ID_Teleport_bug3);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Teleport_bug4() : Unit
    {
        RunTest(ID_Teleport_bug4);
    }
    @Test("QuantumSimulator")
    operation Test_ID_Teleport_bug5() : Unit
    {
        RunTest(ID_Teleport_bug5);
    }

}

namespace MyTest.Unitarity
{

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    open MyTest.Config;

    @Test("QuantumSimulator")
    operation Test_UN_Cir1A() : Unit
    {
        RunTest(UN_Cir1A);
    }
    @Test("QuantumSimulator")
    operation Test_UN_Cir1B() : Unit
    {
        RunTest(UN_Cir1B);
    }
    @Test("QuantumSimulator")
    operation Test_UN_Empty() : Unit
    {
        RunTest(UN_Empty);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT() : Unit
    {
        RunTest(UN_QFT);
    }
    @Test("QuantumSimulator")
    operation Test_UN_CRot() : Unit
    {
        RunTest(UN_CRot);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM1() : Unit
    {
        RunTest(UN_QFT_GM1);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM2() : Unit
    {
        RunTest(UN_QFT_GM2);
    }
    @Test("QuantumSimulator")
    operation Test_UN_QFT_GM3() : Unit
    {
        RunTest(UN_QFT_GM3);
    }


    @Test("QuantumSimulator")
    operation Test_nonUN_Cir2A() : Unit
    {
        RunTest(UN_non_Cir2A);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_Cir2B() : Unit
    {
        RunTest(UN_non_Cir2B);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_Reset() : Unit
    {
        RunTest(UN_non_Reset);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM1() : Unit
    {
        RunTest(UN_non_QFT_MM1);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM2() : Unit
    {
        RunTest(UN_non_QFT_MM2);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM3() : Unit
    {
        RunTest(UN_non_QFT_MM3);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM4() : Unit
    {
        RunTest(UN_non_QFT_MM4);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_QFT_MM5() : Unit
    {
        RunTest(UN_non_QFT_MM5);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_CRot_bug1() : Unit
    {
        RunTest(UN_non_CRot_bug1);
    }
    @Test("QuantumSimulator")
    operation Test_nonUN_CRot_bug2() : Unit
    {
        RunTest(UN_non_CRot_bug2);
    }

}
