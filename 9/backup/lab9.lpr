program lab9;
uses SysUtils;
type
  employee = record
     id: integer;
     lastName: string;
     end;
  valueType = ^employee;
  ptr = ^linkedNode;
  linkedNode = record
     next: ptr;
     value: valueType;
     end;

function InputEmployee(): valueType;
var emp: valueType;
begin
  New(emp);

  Write('Код:> ');
  ReadLn(emp^.id);
  Write('Фамилия:> ');
  ReadLn(emp^.lastName);
end;

procedure DeleteEmployeeWithCode(list: ptr; id: integer);
begin

end;

procedure BubbleSort(list: ptr; n: integer);
var a, b: ptr;
    i, j: integer;
    tmp: valueType;
begin
  if n <> 1 then
  begin
    for j := n-1 downto 1 do
    begin
      a := list;
      b := list^.next;
      for i := 1 to j do
      begin
        if a^.value^.id > b^.value^.id then
        begin
          tmp := a^.value;
          a^.value := b^.value;
          b^.value := tmp;
        end;

        a := b;
        b := b^.next;
      end;
    end;
  end;
end;

var
  head: ^linkedNode;
  tail: ^linkedNode;
  current: ^linkedNode;
  n, i: integer;
begin
  Write('Введите кол-во сотрудников:> ');
  ReadLn(n);
  for i := 1 to n do
  begin
    New(current);

    WriteLn('Ввод информации о сотруднике №', i);
    current^.value := InputEmployee();

    if not Assigned(head) then
    begin
      head := current;
      tail := head;
    end
    else
    begin
      tail^.next := current;
      tail := current;
    end;
  end;

  BubbleSort(head, n);

  WriteLn('Отсортированный список:');
  current := head;
  while Assigned(current) do
  begin
    WriteLn('Сотрудник. Код: ', current^.value^.id, '; Фамилия: ', current^.value^.lastName);
    current := head^.next;
  end;

  ReadLn;
end.

