
Program Day3P1;
uses
    Classes, Sysutils; 
const
    FNAME = 'D3P1Input';
Var 
    num, counting, stringlength: integer;
    answer, gamma, epsilon, x, y: longint;
    tempnum : char;
    txtline, temptemp, ga, ep: string;
    input: TextFile;
    
Begin
    //initializing variable
    //Assigning file
    Assign(input, FNAME);
    reset(input);
    //see how long the line is
    readln(input, txtline);
    stringlength := length(txtline);
    for counting := 1 to stringlength do
        begin
        //reset these variables for each loop
            x := 0;
            y := 0;
            while not eof(input) do
                begin
                    readln(input, txtline);
                    //lots of bs to get the number as an integer
                    //temptemp := (LeftStr(txtline, counting));
                    temptemp := txtline[counting];
                    tempnum := temptemp[1];
                    num := ord(tempnum);
                    num := num - 48;
                    //writeln(num);
                    //writeln (num);
                    if num = 0 then
                        begin
                            x := x + 1;
                        end
                    else
                        begin
                            y := y + 1;
                end;
        end;


    if x < y then
        begin
            ep := ep + '0';
            ga := ga + '1';
        end
    else    
        begin
            ep := ep + '1';
            ga := ga + '0';
        end;
    reset(input);
end;



//convert binary string to integer
epsilon := StrToInt( '%' + ep);
gamma := StrToInt( '%' + ga);
answer := gamma * epsilon;
writeln('Your puzzle answer is ', answer);
End.
