program lab4;
var n, r, l, m, tmp, i :integer;
    q :array[1..30] of integer;
begin
    writeln('enter array (30 numbers in non-decreasing order)');
    for i := 1 to 30 do begin
        readln(tmp);
        q[i] := tmp;
    end;
    writeln('enter number');
    readln(n);
    r := 10;
    l := 1;
    while r-l > 1 do begin
        m := (r+l) div 2;
        if q[m] > n then
            r := m
        else
            l := m;
        writeln(l, ' ', r);
    end;
    if q[l] = n then
        writeln('number was founded at ', l)
    else
        writeln('number was not founded in the array');
end.