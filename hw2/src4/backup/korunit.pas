unit KorUnit;

{$mode ObjFPC}{$H+}

interface
  type Func = function(x: real): real;
  function Kor(f: Func; a: real; b: real): real;

implementation
  function Kor(f: Func; a: real; b: real): real;
  var eps: real = 0.001;
      x: real;
  begin
    x := (a+b)/2;
    if abs(x) < eps then
      Result := a
    else begin
      if f(x) > 0 then
        Result := Kor(f, a, x)
      else
        Result := Kor(f, x, b);
    end;
  end;
end.

