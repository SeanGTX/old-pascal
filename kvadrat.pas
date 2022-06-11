uses crt;
var
  a,b,c,d,x:Real;
begin
  clrscr;
  write('a = ');
  readln(a);
  write('b = ');
  readln(b);
  write('c = ');
  readln(c);
  d:=sqr(b)-4*a*c;
 // d:=sqrt(-1);
  writeln('D = ', d);
  if d > 0 then
    begin
      x:=(-b+sqrt(d))/(2*a);
      WriteLn('x1 = ', x);
      x:=(-b-sqrt(d))/(2*a);
      Write('x2 = ', x);
    end;
  if d < 0 then Write('корней нет');
  if d = 0 then
    begin
      x:=-b/(2*a);
      Write('x = ',x);
    end;
  readln;
end.
