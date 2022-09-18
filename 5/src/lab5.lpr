program lab5;
var arr :array[1..6, 1..3] of Integer;
    i, j :Integer;
begin
  WriteLn('Введите матрицу 6x3');
  for i := 1 to 3 do
    for j := 1 to 3 do
      arr[i, j] = i*j;
  ReadLn;
  i := 1;
  while i <= 5 do
    Write(i + ' ' + a[i, 0]);
  ReadLn;
end.

