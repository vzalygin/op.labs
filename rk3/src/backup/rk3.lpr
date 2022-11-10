program rk3;

// Объявляем типы элементы и указателя на него
type
  node = record
              value: integer;
              next: ^node;
              prev: ^node;
            end;
  node_ptr = ^node;

// Рекурсивная функция. Считывает список длины n
// Возвращает указатель на первый элемент списка
// Для списка нулевой длины возвращает nil
function input_list(n: integer): node_ptr;
// curr - текущий элемент (голова) относительно текущего вызова функции
// next - следующий элемент (голова хвоста) относительно текущего вызова функции
var curr, next: node_ptr;
begin
  curr := nil;

  // Мы можем считать только списки ненулевой длины
  if n > 0 then
  begin
    // Выделяем память для текущего элемента
    New(curr);
    // Записываем значение в него
    Read(curr ^.value);
    // Вызываем для считывание для хвоста и первый элемент хвоста
    next := input_list(n-1);

    // Связываем текущей элемент и следующие
    curr ^.next := next;
    if Assigned(next) then
    // Если вернулся непустой хвост, то связываем хвост с головой
      next ^.prev := curr;
  end;

  // Возвращаем голову текущего списка
  Result := curr;
end;

// Фукнция замены текущего элемента и последнего
function replace_first_last(first: node_ptr): node_ptr;
var last: node_ptr;
begin
  last := first;

  // Проходимся по списку в конец и находим последний элемент
  while Assigned(last ^.next) do
  begin
    last := last ^.next;
  end;

  // Перезаписываем ссылки в 2 и предпоследнем элементах
  last ^.prev ^.next := first;
  first ^.next ^.prev := last;

  // Перезаписываем указатели в первом и последнем элементах,
  // тем самым меняя их местами
  first ^.prev := last ^.prev;
  last ^.prev := nil;
  last ^.next := first ^.next;
  first ^.next := nil;

  // Возвращаем "новую" голову (то есть последний элемент)
  Result := last;
end;

// Рекурсивная процедура вывода списка в консоль
procedure print_list(node: node_ptr);
begin
   if Assigned(node) then
   begin
     Write(node ^.value, ' ');
     print_list(node ^.next);
   end;
end;

// Рекурсивная процедура освобождения памяти
// Проходит в конец и от конца до начала освобождает память
procedure dispose_list(node: node_ptr);
begin
  if Assigned(node) then
  begin
    dispose_list(node ^.next);
    Dispose(node);
  end;
end;

// first - указатель на голову списка
// n - длина списка
var first: node_ptr;
    n: integer;
begin
  Write('Введите кол-во элементов:> ');
  ReadLn(n);

  // Считываем спискок из консоли
  WriteLn('Введите элементы');
  first := input_list(n);
  ReadLn;

  // Меняем местами первый и последний элементы
  first := replace_first_last(first);
  WriteLn('Изменённый список:');
  // Выводим список
  print_list(first);
  // Освобождаем памяти
  dispose_list(first);

  ReadLn;
end.

