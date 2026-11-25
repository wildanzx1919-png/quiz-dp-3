
program NilaiDuaDimensi;

uses crt;

var
  nilai: array[1..3,1..3] of integer;
  rata: array[1..3] of real;
  i, j: integer;
  maks: real;
  terbaik: integer;

procedure InputNilai;
var
  a, b: integer;
begin
  for a := 1 to 3 do
  begin
    writeln('Mahasiswa ke-', a);

    for b := 1 to 3 do
    begin
      repeat
        write('Nilai mata kuliah ', b, ': ');
        readln(nilai[a,b]);
      until (nilai[a,b] >= 0) and
            (nilai[a,b] <= 100);
    end;
  end;
end;

function HitungRata(a, b, c: integer): real;
begin
  HitungRata := (a + b + c) / 3;
end;

procedure CariTertinggi(var hasil: real;
                        var nomor: integer);
var
  k: integer;
begin
  hasil := rata[1];
  nomor := 1;

  for k := 2 to 3 do
  begin
    if rata[k] > hasil then
    begin
      hasil := rata[k];
      nomor := k;
    end;
  end;
end;

begin
  clrscr;

  InputNilai;

  writeln;
  writeln('=== HASIL NILAI ===');

  for i := 1 to 3 do
  begin
    rata[i] := HitungRata(
      nilai[i,1],
      nilai[i,2],
      nilai[i,3]
    );

    writeln('Mahasiswa ', i,
      ' rata-rata: ', rata[i]:0:2);
  end;

  CariTertinggi(maks, terbaik);

  writeln;
  writeln('Rata-rata tertinggi: ', maks:0:2);
  writeln('Mahasiswa terbaik: ', terbaik);

  readln;
end.
