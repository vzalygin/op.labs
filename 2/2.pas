program lab2;
{ объявление переменных }
var x, y :Real;
begin
    { запрос координат точки }
    WriteLn('Enter coords of point (x, y)');
    ReadLn(x, y);
    { проверка, лежит ли точка в нужной области (строго)}
    if (y < x/3) and (y < Sin(x)) and (x < Pi) then begin
        { вывод о том, что точка принадлежит области }
        WriteLn('Point in the selected area');
    end else begin
        { вывод о том, что точка не принадлежит области }
        WriteLn('Point is not in the selected area');
    end
end.
