program hw2;

var str: string;
    result, dump_set, word_set: set of 'a'..'z';
    i: integer;
    c: char;
begin
  Write('Введите строку:> ');
  ReadLn(str);

  dump_set := [];
  word_set := [];
  result := [];
  for i := 1 to length(str) do
    if str[i] in ['a'..'z'] then
      word_set += [str[i]]
    else if str[i] = ' ' then
    begin
      result += dump_set * word_set;
      dump_set += word_set;
      word_set := [];
    end;
  result += dump_set * word_set;


  WriteLn('Повторяющиеся символы:');
  for c := 'a' to 'z' do
    if c in result then
      Write(c, ' ');

  ReadLn;
end.

