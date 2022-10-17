unit KorUnit;

interface
  type Func = function(x: real): real;
  function Kor(f: Func; a: real; b: real): real;

implementation
  function Kor(f: Func; a: real; b: real): real;
  var eps: real;
      x: real;
  begin
    eps := 0.001;
    x := (a+b)/2;

    if abs(f(x)) < eps then
      Result := x
    else begin
      if f(x) > 0 then
        Result := Kor(f, a, x)
      else
        Result := Kor(f, x, b)
    end;

  end;
end.

