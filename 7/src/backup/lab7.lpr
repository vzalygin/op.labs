program lab7;
type matrix = array of array of integer;

function Min(const arr) :integer;
var min_element, high_index, i, j :integer;
begin
  min_element := arr[0][0];
  high_index := High(arr);
  for i := 0 to high_index do
    for j := 0 to high_index do
      if arr[i, j] < min_element then
        min_element := arr[i, j];
  Result := min_element;
end;

function SumOfMin(const a :matrix; const b: matrix; const c: matrix) :integer;
begin
  Result := min(a) + min(b) + min(c);
end;

var arr1, arr2, arr3 :matrix;
begin

  WriteLn(SumOfMin(arr1, arr2, arr3));
  ReadLn;
end.

