program hw33;

type Horse = object
  private
    name: String;
    best: array[1..5] of real;
  public
    constructor Init(nname: string; best1: real; best2: real; best3: real; best4: real; best5: real);
    procedure Print;
    function AverageTime: real;
end;

constructor Horse.Init(nname: string; best1: real; best2: real; best3: real; best4: real; best5: real);
begin
  name := nname;
  best[1] := best1;
  best[2] := best2;
  best[3] := best3;
  best[4] := best4;
  best[5] := best5;
end;

type thorses = array of horse;

procedure Horse.Print;
var i: integer;
begin
  WriteLn('Horse { name: ', name, ' best:');
  for i := 1 to 5 do
    WriteLn('time: ', best[i]:4:1);
  WriteLn('}');
end;

function Horse.AverageTime: real;
var i: integer;
    sum: real;
begin
  sum := 0;
  for i := 1 to 5 do
    sum += best[i];
  Result := sum / 5;
end;

type Stable = object
  private
    horses: thorses;
  public
    constructor Init(nhorses: thorses);
    procedure Print;
    function AverageTime: real;
end;

constructor Stable.Init(nhorses: thorses);
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
  sum := 0;
  for i := 0 to high(horses) do
    sum += horses[i].AverageTime;
  Result := sum / (high(horses)+1);
end;

var my_stable: Stable;
    my_horses: thorses;
begin
  SetLength(my_horses, 5);
  my_horses[0].Init('1', 1.0, 1.1, 1.2, 1.3, 1.4);
  my_horses[1].Init('2', 2.0, 2.1, 2.2, 2.3, 2.4);
  my_horses[2].Init('3', 3.0, 3.1, 3.2, 3.3, 3.4);
  my_horses[3].Init('4', 4.0, 4.1, 4.2, 4.3, 4.4);
  my_horses[4].Init('5', 5.0, 5.1, 5.2, 5.3, 5.4);

  my_stable.Init(my_horses);

  WriteLn('Horse 2: ');
  my_horses[1].Print;
  WriteLn('Stable: ');
  my_stable.Print;

  WriteLn('Average time of horse 2: ', my_horses[1].AverageTime:4:1);
  WriteLn('Average time of all horses: ', my_stable.AverageTime:4:1);
  ReadLn;
end.
