namespace MyTest.Identity {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    open Quantum.QBlackBoxChecker;
    open Program.Circuit;
    open Program.QFT;
    open Program.QPE;
    open Program.Teleport;
    open MyTest.Config;


    //Return the number of pass
    operation ID_Empty_Correct() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(EmptySize(), Empty, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Empty_bug1() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(EmptySize(), Empty_bug1, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Empty_bug2() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(EmptySize(), Empty_bug2, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }


    operation ID_QFTiQFT_correct() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_correct, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug1() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug1, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug2() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug2, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug3() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug3, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug4() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug4, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QFTiQFT_bug5() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), QFTiQFT_bug5, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }



    operation ID_QPEiQPE_correct() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug1() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug1, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug2() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug2, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug3() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug3, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug4() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug4, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_QPEiQPE_bug5() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), TestQPEinvQPE_bug5, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }



    operation ID_Teleport_correct() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug1() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug1, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug2() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug2, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug3() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug3, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug4() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug4, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    operation ID_Teleport_bug5() : Int
    {
        mutable npass = 0;
        for i in 1 .. RunTimesOfEachTest()
        {
            let r = IdentityCheck(QFTSize(), Teleport_ID_bug5, NOfPoints_ID());
            if (r)
            {
                set npass = npass + 1;
            }
        }
        return npass;
    }
    
}
