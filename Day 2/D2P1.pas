
Program Day2P1;
uses
    Classes, Sysutils; 
const
    FNAME = 'D2P1Input';
Var 
    num, totallines, x, y : integer;
    answer : longint;
    tempnum ,tempchar : char;
    txtline ,temptemp: string;
    input: TextFile;

Begin
    //initializing variable
    totallines := 0;
    //Assigning file
    Assign(input, FNAME);
    reset(input);
 while not eof(input) do
        begin
            readln(input, txtline);
            //lots of bs to get the number as an integer
            temptemp := (RightStr(txtline, 1));
            tempnum := temptemp[1];
            num := ord(tempnum);
            num := num - 48;
            //lots of bs to get direction as something I can work with
            temptemp := (LeftStr(txtline, 1));
            tempchar := temptemp[1];
            if tempchar = 'f' then
                x := x + num;
            if tempchar = 'd' then
                y := y + num;
            if tempchar = 'u' then
                y := y - num;
         end;
    reset(input);
answer := x * y;
writeln('Your puzzle answer was ', answer);
End.
