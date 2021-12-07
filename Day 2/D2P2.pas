
Program Day2P2;
uses
    Classes, Sysutils; 
const
    FNAME = 'D2P2Input';
Var 
    num, totallines, aim: integer;
    answer,x ,y : longint;
    tempnum ,tempchar : char;
    txtline ,temptemp: string;
    input: TextFile;
Begin
    //initializing variable
    totallines := 0;
    //Assigning file
    aim := 0;
    Assign(input, FNAME);
    reset(input);
 while not eof(input) do
        begin
            num := 0; 
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
                begin
                x := x + num; 
                y := y + (num * aim);
                end;
            if tempchar = 'd' then
                aim := aim + num;
                
            if tempchar = 'u' then
                aim := aim - num;
         end;
    reset(input);
answer := x * y;
writeln('Your puzzle answer is', answer);
End.
