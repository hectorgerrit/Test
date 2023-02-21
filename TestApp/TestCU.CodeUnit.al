codeunit 60090 TestCU
{
    Subtype = Test;
    // Rules
    // devided by 3 = Fizz
    // devided by 5 = Buzz
    // devided by 3 & 5 = FizzBuzz
    // add values to table

    [test]
    procedure FirstTest()
    begin
        //Given the Value of
        LoopValue := 2;
        //When we call the function with the defined value 
        FunctionReturnValue := FuzzBizzTddCodeunit.FizzBuzzValueCheck(LoopValue);
        //Then we check if the EXPECTED value - 2  - is equal to the ACTUAL value
        Assert.AreEqual(Format(LoopValue), FunctionReturnValue, ('Send in ' + Format(LoopValue)));
    end;

    [test]
    procedure ThreeIsFizz()
    begin
        //Given the Value of
        LoopValue := 3;
        //When we call the function with the defined value  
        FunctionReturnValue := FuzzBizzTddCodeunit.FizzBuzzValueCheck(LoopValue);
        //Then we check if the EXPECTED value - Fizz  - is equal to the ACTUAL value
        Assert.AreEqual('Fizz', FunctionReturnValue, ('Send in ' + Format(LoopValue)));
    end;

    [test]
    procedure FiveIsBuzz()
    begin
        //Given the Value of
        LoopValue := 5;
        //When we call the function with the defined value  
        FunctionReturnValue := FuzzBizzTddCodeunit.FizzBuzzValueCheck(LoopValue);
        //Then we check if the EXPECTED value - Buzz  - is equal to the ACTUAL value
        Assert.AreEqual('Buzz', FunctionReturnValue, ('Send in ' + Format(LoopValue)));
    end;

    [test]
    procedure FifteenIsFizzBuzz()
    begin
        //Given the Value of
        LoopValue := 15;
        //When we call the function with the defined value 
        FunctionReturnValue := FuzzBizzTddCodeunit.FizzBuzzValueCheck(LoopValue);
        //Then we check if the EXPECTED value - Buzz  - is equal to the ACTUAL value
        Assert.AreEqual('FizzBuzz', FunctionReturnValue, ('Send in ' + Format(LoopValue)));
    end;

    var
        FuzzBizzTddCodeunit: Codeunit FuzzBizzTdd;
        Assert: Codeunit Assert;
        LoopValue: Integer;
        FunctionReturnValue: Text;


}