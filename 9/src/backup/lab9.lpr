program lab9;
uses SysUtils;
type
  employee = record
     id: integer;
     lastName: string;
     end;
  list = array of employee;

procedure DeleteEmployeeWithCode(var l: list; id: integer);
var i: integer;
begin
  for i := 0 to High(l) do
   if l[i].id = id then
   begin
     Delete(l, i, 1);
     break;
   end;
end;

procedure BubbleSort(var l: list; n: integer);
var i, j: integer;
    tmp: employee;
begin
  for i := n-1 downto 0 do
    for j := 0 to i do
    begin
      if l[j].lastName > l[j+1].lastName then
      begin
        tmp := l[j];
        l[j] := l[j+1];
        l[j+1] := tmp;
      end;
    end;
end;

var
  a: list;
  n, i: integer;
begin
  Write('Введите кол-во сотрудников:> ');
  ReadLn(n);
  SetLength(a, n);
  n -= 1;

  for i := 0 to n do
  begin
    WriteLn('Ввод информации о сотруднике №', i+1);
    Write('Код:> ');
    ReadLn(a[i].id);
    Write('Фамилия:> ');
    ReadLn(a[i].lastName);
  end;

  BubbleSort(a, n);

  WriteLn('Отсортированный список:');
  for i := 0 to n do
    WriteLn('Код: ', a[i].id, ' Фамилия: ', a[i].lastName);

  Write('Введите номер сотрудника, которого нужно удалить:> ');
  ReadLn(i);
  DeleteEmployeeWithCode(a, i);

  WriteLn('Итоговый список:');
  for i := 0 to High(a) do
    WriteLn('Код: ', a[i].id, ' Фамилия: ', a[i].lastName);

  ReadLn;
end.

