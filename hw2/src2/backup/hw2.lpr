program hw2;

var n, m, k, i, j, sum: integer;
    matrix: array[1..10, 1..10] of integer;
begin
  Write('Введите k, n, m (n, m < 10) :> ');
  Read(k);
  Read(n);
  Read(m);

  WriteLn('Введите матрицу NxM:');
  for i := 1 to n do
    for j := 1 to m do
      Read(matrix[i, j]);
  ReadLn;

  sum := 0;
  for i := 1 to n do
    for j := 1 to m do
      if i+j <= k then
        sum += matrix[i, j];

  WriteLn('Сумма элементов: ', sum);
  ReadLn;
end.

