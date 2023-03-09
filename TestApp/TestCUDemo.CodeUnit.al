codeunit 60091 TestCUDemo
{
    Subtype = Test;
    // Rules
    // an integer 'value' - done
    // return the value  - done 
    // devided by 3 = Fizz
    // devided by 5 = Buzz
    // devided by 3 & 5 = FizzBuzz

    // 0
    // 1
    // 2


    [Test]
    procedure IntergerReturnSameValue()
    begin
        //Given the Value of
        ValueIn := 2;
        //When we call the function with the defined value 
        ReturnValue := FuzzBizzTddCodeunit.CalcValue(ValueIN);
        //Then 
        Assert.AreEqual(Format(ValueIn), ReturnValue, 'we send 2 in');
    end;

    [Test]
    procedure DevidedBy3FizzReturn()
    begin
        //Given the Value of
        ValueIn := 3;
        //When we call the function with the defined value 
        ReturnValue := FuzzBizzTddCodeunit.CalcValue(ValueIN);
        //Then 
        Assert.AreEqual(Format(ValueIn), 'Fizz', 'we send 3 in');
    end;

    var
        FuzzBizzTddCodeunit: Codeunit FuzzBizzTddDemo;
        Assert: Codeunit Assert;
        ValueIn: Integer;
        ReturnValue: text;

}