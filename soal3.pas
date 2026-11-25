
program MenuNilai;

uses crt;

var
  nilai: array[1..5] of integer;
  n, pilihan, i: integer;
  total: integer;
  rata: real;

function HitungRata(t, j: integer): real;
begin
  HitungRata := t / j;
end;

procedure InputData;
begin
  repeat
    write('Jumlah mahasiswa (1-5): ');
    readln(n);
  until (n >= 1) and (n <= 5);

  for i := 1 to n do
  begin
    repeat
      write('Nilai mahasiswa ', i, ': ');
      readln(nilai[i]);
    until (nilai[i] >= 0) and
          (nilai[i] <= 100);
  end;
end;

procedure TampilkanData;
begin
  writeln;
  writeln('=== DAFTAR NILAI ===');

  for i := 1 to n do
    writeln('Mahasiswa ', i, ': ', nilai[i]);
end;

procedure TampilkanRata;
begin
  total := 0;

  for i := 1 to n do
    total := total + nilai[i];

  rata := HitungRata(total, n);

  writeln('Rata-rata: ', rata:0:2);
end;

begin
  clrscr;

  n := 0;

  repeat
    writeln;
    writeln('=== MENU NILAI ===');
    writeln('1. Input Nilai');
    writeln('2. Tampilkan Nilai');
    writeln('3. Hitung Rata-rata');
    writeln('4. Keluar');

    write('Pilih menu: ');
    readln(pilihan);

    case pilihan of

      1: InputData;

      2:
        if n > 0 then
          TampilkanData
        else
          writeln('Data belum tersedia');

      3:
        if n > 0 then
          TampilkanRata
        else
          writeln('Data belum tersedia');

      4:
        writeln('Program selesai');

    else
      writeln('Pilihan tidak valid');

    end;

  until pilihan = 4;

  readln;
end.
