program lab6;
var s :string[40];
    i :integer;
begin
  Write('Введите строку: >');
  ReadLn(s);

  i := 1;
  repeat
    if (s[i] = 'M') or (s[i] = 'N') or (s[i] = 'K') then
      s[i+1] := 'E';

    if (s[i+2] = 'S') then
      s[i] := 'Z';

    i += 4;
  until i=40-3;
  WriteLn(s);

  ReadLn;
end.

