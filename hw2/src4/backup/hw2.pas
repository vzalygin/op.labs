program hw2;
{$mode delphi}
uses Math,
     KorUnit;

function Func1(x: real): real;
begin
  Result := -x*x + sin(x/2)
end;

function Func2(x: real): real;
begin
  Result := power(x, 5) + 3*power(x, 3) + power(x, 2) + 1
end;

var f: Func;
begin
  f := Func1;
  writeln(Kor(f, -2, 2):10:5);

  f := Func2;
  WriteLn(Kor(f, -2, 2):10:5);

  readln;
end.

