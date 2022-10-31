program hw32;

type ChocolateProduct = object
  private
    name: string;
    energy_value: real;
  public
    procedure Init(new_name: string; new_energy_value: real);
    function GetEnergyValue(): real;
    procedure Print;
end;

procedure ChocolateProduct.Init(new_name: string; new_energy_value: real);
begin
  name := new_name;
  energy_value := new_energy_value;
end;

function ChocolateProduct.GetEnergyValue: real;
begin
  Result := energy_value
end;

procedure ChocolateProduct.Print;
begin
  WriteLn('ChocolateProduct { name: ', name, ' energy_value: ', energy_value:4:1, ' }')
end;

type ChocolateBar = object(ChocolateProduct)
  private
    pieces_number: integer;
  public
    procedure Init(new_name: string; new_energy_value: real; new_pieces_number: integer);
    procedure Print;
    function GetEnergyValuePerPiece: real;
end;

procedure ChocolateBar.Init(new_name: string; new_energy_value: real; new_pieces_number: integer);
begin
  inherited Init(new_name, new_energy_value);
  pieces_number := new_pieces_number;
end;

procedure ChocolateBar.Print;
begin
  WriteLn('ChocolateBar {');
  Write('  Base: ');
  inherited Print;
  WriteLn('  pieces_number: ', pieces_number, ' }');
end;

function ChocolateBar.GetEnergyValuePerPiece: real;
begin
  Result := energy_value / pieces_number
end;

var a: ChocolateBar;
begin
  a.Init('mars', 93.2, 2);
  a.Print;
  WriteLn('Energy value: ', a.GetEnergyValue:4:1);
  WriteLn('Energy value per piece: ', a.GetEnergyValuePerPiece:4:1);

  ReadLn;
end.

