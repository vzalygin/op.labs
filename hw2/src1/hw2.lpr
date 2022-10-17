program hw2;

type arr = array[1..50] of real;

procedure Sort(var a: arr; n: integer);
var i, j, min_i: integer;
    min_v, tmp: real;
begin
  for i := 1 to n do
  begin
    min_v := a[i];
    min_i := i;

    for j := i+1 to n do
      if a[j] < min_v then begin
        min_v := a[j];
        min_i := j;
      end;

    tmp := a[i];
    a[i] := a[min_i];
    a[min_i] := tmp;
  end;
end;

var a: arr;
    n, i: integer;

begin
  Write('Введите n<50 :> ');
  ReadLn(n);
  WriteLn('Введите массив указанной длины');
  for i := 1 to n do
    Read(a[i]);
  ReadLn;

  Sort(a, n);

  WriteLn('Отсортированный массив:');
  for i := 1 to n do
    Write(a[i]:10:4, ' ');

  ReadLn;
end.

