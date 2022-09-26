program lab7;
uses Math;

function Min(const matr; n :integer) :integer;
var min_element, i :integer;
    arr :array[byte] of integer absolute matr;
begin
  min_element := arr[0];
  for i := 0 to n*n-1 do
    if arr[i] < min_element then
      min_element := arr[i];
  Result := min_element;
end;

procedure InputMatrix(var matr; n :integer);
var i, j :integer;
    arr :array[byte] of integer absolute matr;
begin
  for i := 0 to n-1 do
    for j := 0 to n-1 do
      Read(arr[i + j*n]);
  ReadLn;
end;

function SumOfMin(const matrix1; a :integer;
                  const matrix2; b :integer;
                  const matrix3; c :integer) :integer;
begin
  Result := Min(matrix1, a) + Min(matrix2, b) + Min(matrix3, c);
end;

type matrix = array[byte, byte] of integer;
var a, b, c :matrix;
    a_l, b_l, c_l :integer;
begin
  Write('Введите порядки матриц: >');
  ReadLn(a_l, b_l, c_l);
  WriteLn('Введите матрицу 1:');
  InputMatrix(a, a_l);
  WriteLn('Введите матрицу 2:');
  InputMatrix(b, b_l);
  WriteLn('Введите матрицу 3:');
  InputMatrix(c, c_l);

  WriteLn('Сумма минимумов: ', SumOfMin(a, a_l, b, b_l, c, c_l));
  ReadLn;
end.

