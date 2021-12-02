
Program Day1A;
uses
    Sysutils;
const
    FNAME = 'D1P2Input';
Var 
    previous, current, bigger, totallines, line, txtline: integer;
    input: TextFile;
    depth: array [1..9001] Of integer;

Begin
    //initializing variable
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
    for line := 1 to totallines do
        begin   
        readln(input, txtline);
        depth[line] := txtline;
        end;
        Close(input);
for line := 1 to (totallines - 2) do
    begin
        previous := depth[line] + depth[line + 1] + depth[line + 2];
        current := depth[line+1] + depth[line + 2] + depth[line + 3];
        if current > previous then bigger := bigger + 1
    end;
writeln('Your puzzle answer was ', bigger);
End.
