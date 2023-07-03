namespace MyTest.Config {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Diagnostics;
    open Quantum.QBlackBoxChecker;

    function SuccessNumber() : Int
    {
        let SuccessLevel = 0.7;
        let ret = Floor(IntAsDouble(RunTimesOfEachTest()) * SuccessLevel);
        return ret;
    }

    operation RunTest(Prog : Unit => Int) : Unit
    {
        let r = Prog();
        Message($"{r}");
        if (r < SuccessNumber())
        { fail "Not good"; }
    }

    function Alpha2() : Double  //alpha2
    {
        return 0.1;
    }

    function RunTimesOfEachTest() : Int
    {
        return 100;
    }

    function NOfPoints() : Int      //k for UN and EQ
    {
        return 4;
    }

    function NOfPoints_ID() : Int      //k for ID
    {
        return 50;
    }

    function NOfTrace() : Int
    {
        return 20;
    }

    function Epsilon() : Double
    {
        return 0.15;
    }

    function QFTSize() : Int
    {
        return 5;
    }

    function QPESize() : Int
    {
        return QPECtrlSize() + QPETarSize();
    }
    function QPECtrlSize() : Int
    {
        return 4;
    }
    function QPETarSize() : Int
    {
        return 1;
    }

    function CRotSize() : Int
    {
        return 5;
    }


    function TeleportSize() : Int
    {
        return 3;
    }

    function EmptySize() : Int
    {
        return 6;
    }



    @Test("QuantumSimulator")
    operation ShowTofEquivalence() : Unit
    {
        let t = TofEquivalence(NOfPoints(), Alpha2(), Epsilon());
        Message($"t_eq = {t}");
    }

    @Test("QuantumSimulator")
    operation ShowTofUnitarity() : Unit
    {
        let t = TofUnitarity(NOfPoints(), Alpha2(), Epsilon());
        Message($"t_un = {t}");
    }

}
