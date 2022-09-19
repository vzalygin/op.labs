program lab5;
var arr :array[1..6, 1..3] of Integer;
    i, j :Integer;
begin
  WriteLn('Введите матрицу 6x3');
  for i := 1 to 6 do
    for j := 1 to 3 do
      { Записываем элементы в матрицу }
      Read(arr[i, j]);
  ReadLn;

  { Вывод нечётных строк }
  WriteLn('Вывод матрицы:');
  i := 1;
  while i <= 5 do
  begin
    Write(i, ': ');
    for j := 1 to 3 do
      Write(arr[i, j]:3, ' ');
    WriteLn();
    i += 2;
  end;

  { Вывод чётных строк }
  WriteLn();
  WriteLn('     2   4   6');
  WriteLn('     |   |   |');
  for j := 1 to 3 do
  begin
    i := 2;
    Write('   ');
    while i <= 6 do
    begin
      Write(arr[i, j]:3, ' ');
      i += 2;
    end;
    WriteLn();
  end;
  ReadLn;
end.

