
program DataMahasiswa;
uses crt;

type
  TMahasiswa = record
    nama: string;
    nim: string;
    nilai: integer;
    predikat: string;
  end;

var
  mhs: array[1..3] of TMahasiswa;
  i: integer;

function TentukanPredikat(n: integer): string;
begin
  if n >= 85 then
    TentukanPredikat := 'A'
  else if n >= 75 then
    TentukanPredikat := 'B'
  else if n >= 65 then
    TentukanPredikat := 'C'
  else
    TentukanPredikat := 'D';
end;

procedure TampilkanData;
var
  j: integer;
begin
  writeln;
  writeln('=== DATA MAHASISWA ===');

  for j := 1 to 3 do
  begin
    writeln('Nama     : ', mhs[j].nama);
    writeln('NIM      : ', mhs[j].nim);
    writeln('Nilai    : ', mhs[j].nilai);
    writeln('Predikat : ', mhs[j].predikat);
    writeln('----------------------');
  end;
end;

begin
  clrscr;

  i := 0;

  repeat
    i := i + 1;

    writeln('Mahasiswa ke-', i);

    write('Nama: ');
    readln(mhs[i].nama);

    write('NIM: ');
    readln(mhs[i].nim);

    write('Nilai: ');
    readln(mhs[i].nilai);

    mhs[i].predikat :=
      TentukanPredikat(mhs[i].nilai);

    writeln;

  until i = 3;

  TampilkanData;

  readln;
end.
