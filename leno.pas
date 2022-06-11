program leno;
uses crt;
var
  a,b:Integer;
  x,xeco,bc,ec,all:real;
begin
    clrscr();
    WriteLn('Введите цену в бизнес класс');
    Readln(x);
    xeco:=x/2;
    WriteLn('Введите кол-во свободных мест в бизнес классе');
    Readln(a);
    WriteLn('Введите кол-во свободных мест в эконом классе');
    Readln(b);
    bc:=40;
    ec:=120;
    bc:=bc - a;
    ec:=ec - b;
    all:=(x*bc)+(xeco*ec);
    WriteLn('Авиакомпания получит ',all,' р');
    readln;
end.
