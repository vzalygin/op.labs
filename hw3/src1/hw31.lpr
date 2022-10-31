program hw31;
uses Math;

type Circle = object
  private
    x, y, r: real;
  public
    procedure Init(new_x: real; new_y: real; new_r: real);
    procedure Write();
    function IsInCircle(point_x: real; point_y: real): boolean;
end;

procedure Circle.Init(new_x: real; new_y: real; new_r: real);
begin
  x := new_x;
  y := new_y;
  r := new_r;
end;

function Circle.IsInCircle(point_x: real; point_y: real): boolean;
begin
  Result := power(point_x - x, 2) + power(point_y - y, 2) <= power(r, 2);
end;

procedure Circle.Write;
begin
  WriteLn('Circle {x: ', x:4:1, ' y: ', y:4:1, ' r: ', r:4:1, '}');
end;

var a: Circle;
begin
  a.Init(1, 1, 1);
  WriteLn('Принадлежит ли точка 0 0 кругу: ', a.IsInCircle(0, 0));
  WriteLn('Принадлежит ли точка 0 1 кругу: ', a.IsInCircle(0, 1));
  WriteLn('Принадлежит ли точка 5 -1 кругу: ', a.IsInCircle(5, -1));
  a.Write;

  ReadLn;
end.

