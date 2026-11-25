program menghitung;
uses crt;
var
nilai :array[1..5] of integer;
i,total,maks,min : integer;
rata : real;

function hitungrata(t,n:integer):real;
begin
    hitungrata:= t/n;
end;


begin
clrscr;
total:=0;
for i := 1 to 5 do
begin
    write('masukkan nilai mahasiswa ke ',i,':');
    readln(nilai[i]);
    total:= total + nilai[i];
end;
    maks:= nilai[1];
    min:= nilai [1];

    for i := 2 to 5 do
    begin
        if nilai[i]>maks then
        maks:= nilai[i];

        if nilai[i]<min then
        min:=nilai[i];
    end;

    rata:= hitungrata(total,5);

    writeln ('rata rata       :',rata:0:2);
    writeln ('nilai tertinggi :',maks);
    writeln ('nilai terendah  :',min);

    for i:= 1 to 5 do
    begin
    if nilai[i]>=85 then
    writeln('nilai' ,nilai[i],'A')
    else if nilai[i]>=75 then
    writeln('nilai',nilai[i],'B')
    else if nilai[i]>=60 then
    writeln('nilai',nilai[i],'C')
    else
    writeln('nilai',nilai[i],'D');
    end;

readln;
end.