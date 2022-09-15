program example2;
{$APPTYPE CONSOLE}

var
  eps, curr, prev :real;
begin
  WriteLn('input eps');
  ReadLn(eps);
  curr := 2;
  prev := 3;
  while Abs(prev-curr) > eps do
  begin
    prev := curr;
    curr := 1 + 1/curr;
  end;

  WriteLn('the value is ', curr:20:16);
  ReadLn;
end.

