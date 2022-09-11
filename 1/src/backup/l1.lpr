program l1;
uses SysUtils;
var a, b, c, d, e, x1, x2, pi: single;
begin
  WriteLn('Input A, B, C:');
  ReadLn(a, b, c);
  d := b*b - 4*a*c;
  if d >= 0 then
     begin
       //e := 2*a;
       x1 := (-b+sqrt(d))/e;
       x2 := (-b-sqrt(d))/e;
       WriteLn('x1 = ', x1:6:1, ' x2 = ', x2:6:1);
     end
  else WriteLn('No result');
  ReadLn;
end.

