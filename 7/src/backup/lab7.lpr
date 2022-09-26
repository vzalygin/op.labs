program lab7;
type tmp = array of array of integer;

function min(var arr :tmp): integer;
var min_element, length, i, j :integer;
begin
  min_element := arr[0][0];
  length := High(arr);
  for i := 0 to length do
    for j := 0 to length do
      if arr[i, j] < min_element then
        min_element := arr[i, j];
  Result := min_element;
end;
var a: tmp = ((9, 8, 3), (5, 4, 7), (2, 1, 0));
begin
  WriteLn(Min(a));

  ReadLn;
end.

