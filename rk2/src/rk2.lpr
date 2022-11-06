program rk2;
type arr = array[1..50, 1..50] of integer;

procedure InputArr(var a: arr; n: integer);
var i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      Read(a[i, j]);
  ReadLn;
end;

var a: arr;
    n, k, i, j,
    min_left, min_right,
    left_i, right_i: integer;
begin
  Write('Введите N:> ');
  ReadLn(n);
  Write('Введите K:> ');
  ReadLn(k);

  InputArr(a, n);

  min_left := 1000000;
  min_right := 1000000;
  for i := 1 to n do
    for j := 1 to n do
    begin
      if i+j <= k then
      begin
        if a[i, j] < min_left then
        begin
          min_left := a[i, j];
          left_i := j + (i-1)*n;
        end;
      end
      else
      begin
        if a[i, j] < min_right then
        begin
          min_right := a[i, j];
          right_i := j + (i-1)*n;
        end;
      end;
    end;

  WriteLn('До (и на) линии минимум ', min_left, ' с порядковым номером ', left_i);
  WriteLn('После линии минимум ', min_right, ' с порядковым номером ', right_i);
  ReadLn;
end.

