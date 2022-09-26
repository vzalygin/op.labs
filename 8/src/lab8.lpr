program lab8;
var f, g :Text;
    f_path, g_path :string;
    numbers :array[word] of integer;
    i, n :integer;
begin
  Write('Введите путь к исходному файлу:> ');
  ReadLn(f_path);
  Write('Введите путь к новому файлу:> ');
  ReadLn(g_path);

  Assign(f, f_path);
  Assign(g, g_path);

  ReSet(f);
  i := 0;
  while not EOF(f) do
  begin
    Read(f, n);
    if n mod 2 = 0 then
    begin
      i += 1;
      numbers[i] := n;
    end;
  end;

  ReWrite(g);
  while i > 0 do
  begin
    Write(g, numbers[i], ' ');
    i -= 1;
  end;

  Close(f);
  Close(g);
  WriteLn('Запись завершена');
  ReadLn;
end.

