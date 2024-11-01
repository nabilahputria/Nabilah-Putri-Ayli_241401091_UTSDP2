program HitungAngka;

uses crt;

var
  n, i: integer;
  angka: array of real;
  total, rataRata: real;

begin
  clrscr;

  write('Masukkan jumlah angka (N): ');
  readln(n);
  
  setlength(angka, n);

  total := 0;
  for i := 1 to n do
  begin
    write('Angka ke-', i, ': ');
    readln(angka[i-1]);
    total := total + angka[i-1]; 
  end;

  if n > 0 then
    rataRata := total / n
  else
    rataRata := 0;

  writeln('Jumlah Total : ', total:0:2);
  writeln('Rata-rata : ', rataRata:0:2);

  readln;
end.
