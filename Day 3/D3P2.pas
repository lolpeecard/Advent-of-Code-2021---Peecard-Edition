
Program Day3P2;
uses
    Classes, Sysutils; 
const
    FNAME = 'D3P2Input';
Var 
    num, counting, stringlength, line, i, j, totallines: integer;
    answer, gamma, epsilon, x, y: longint;
    tempnum : char;
    txtline, temptemp, ga, ep: string;
    keep : integer;
    input: TextFile;
    lines : array [ 1..10000] of integer;

Procedure countnum(pass : integer);
//this procedure searches for the most frequent bit
begin
            begin
        //reset these variables for each loop
            x := 0;
            y := 0;
            while not eof(input) do
                begin
                    if lines[i] <> 0 then
                    begin
                    readln(input, txtline);
                    //lots of bs to get the number as an integer
                    //temptemp := (LeftStr(txtline, counting));
                    temptemp := txtline[pass];
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
        end;

//check to see if we should keep the 0 or the 1s
    if x > y then
        keep := 0
    else    
        keep := 1;
    reset(input);
end;
writeln(keep);
end;

Procedure whichline (pass : integer);
//this procedure tells you which lines have the most used bit
begin
    i := 0;
    for counting := 1 to totallines do
     begin
        //resetting array
        //reset these variables for each loop
            while not eof(input) do
                begin
                    i := i + 1; 
                    if lines[i] <> 0 then
                    begin
                    readln(input, txtline);
                    //lots of bs to get the number as an integer
                    //temptemp := (LeftStr(txtline, counting));
                    temptemp := txtline[pass];
                    //writeln(txtline);
                    tempnum := temptemp[1];
                    num := ord(tempnum);
                    num := num - 48;
                    write(num);
                    if num = keep then
                        lines[i] := i
                        else
                        lines[i] := 0;
                    end;
                end;
        end;
end;
    
Begin
    totallines := 0;
    //Assigning file
    Assign(input, FNAME);
    reset(input);
    // Keep reading lines until the end of the file is reached
    while not eof(input) do
        begin
            totallines := totallines + 1;
            readln(input, txtline);
         end;
    reset(input);

    line := 1;
    //initializing variable
    //Assigning file
    Assign(input, FNAME);
    reset(input);
    //see how long the line is
    readln(input, txtline);
    reset(input);
    stringlength := length(txtline);
for i := 1 to 1000 do
    lines[i] := 1;
countnum(1);
whichline(1);

for j := 1 to totallines do
            if (lines[j]) <> 0 then
                writeln(lines[j]);
countnum(2);
whichline(2);


// this one finds which lines
for j := 1 to totallines do
            if (lines[j]) <> 0 then
                writeln(lines[j]);


                
            




//convert binary string to integer
//epsilon := StrToInt( '%' + ep);
//gamma := StrToInt( '%' + ga);
//answer := gamma * epsilon;
//writeln('Your puzzle answer is ', answer);
End.
