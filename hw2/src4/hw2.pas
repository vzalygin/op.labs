program hw2;
{$mode delphi}
uses Math,
     KorUnit;

function Func1(x: real): real;
begin
  Result := -x*x + sin(x/2) + 1
end;

function Func2(x: real): real;
begin
  Result := power(x, 5) + 3*power(x, 3) + power(x, 2) + 1
end;

begin
  writeln(Kor(Func1, -2, 2):10:5);

  WriteLn(Kor(Func2, -2, 2):10:5);

  readln;
end.

