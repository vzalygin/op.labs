program hw33;

type tbest5 = array[1..5] of real;

type Horse = object
  private
    name: String;
    best: array[1..5] of real;
  public
    procedure Init(nname: String; nbest: tbest5);
    procedure Print;
    function AverageTime: real;
end;

procedure Horse.Init(nname: String; nbest: tbest5);
begin
  name := nname;
  best := nbest;
end;

type thorses = array of horse;

procedure Horse.Print;
var i: integer;
begin
  WriteLn('Horse { name: ', name, ' best:');
  for i := 1 to 5 do
    WriteLn('time: ', best[i]);
  WriteLn('}');
end;

function Horse.AverageTime: real;
var i: integer;
    sum: real;
begin
  for i := 1 to 5 do
    sum += best[i];
  Result := sum / 5;
end;

type Stable = object
  private
    horses: thorses;
  public
    procedure Init(nhorses: thorses);
    procedure Print;
    function AverageTime: real;
end;

procedure Stable.Init(nhorses: thorses);
begin
  horses := nhorses;
end;

procedure Stable.Print;
var i: integer;
begin
  WriteLn('Stable {');
  for i := 0 to high(horses) do
    horses[i].Print;
  WriteLn('}');
end;

function Stable.AverageTime: real;
var i: integer;
    sum: real;
begin
  for i := 0 to high(horses) do
    sum += horses[i].AverageTime;
  Result := sum / (high(horses)+1);
end;

var
begin
end.
