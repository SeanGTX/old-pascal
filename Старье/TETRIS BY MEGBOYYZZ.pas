
uses
  Crt, Graph;


var
  a, b, x1, x2, y1, y2, incx, ylim, xlim, cage_buff, 
  square_blue, square_red, square_yellow, 
  square_green, square_darkblue, square_pink, 
  square_orange, RandomColor: integer;
  c: char;
  tf:Boolean; 
procedure ColorSquare();
begin
  case RandomColor of
    1:putimage(x1,y1,square_blue,1);
    2:putimage(x1,y1,square_red,1);
    3:putimage(x1,y1,square_yellow,1);
    4:putimage(x1,y1,square_green,1);
    5:putimage(x1,y1,square_darkblue,1);
    6:putimage(x1,y1,square_pink,1);
    7:putimage(x1,y1,square_orange,1);
  end;
end;
procedure empty();
begin
end;
procedure sline();
begin
  ylim:=909;
  xlim:=0;
  x1 := 440;
  y1 := 9;
  tf:=true;
  randomize;
  RandomColor:=random(7);
  while tf do
  begin
      if getpixel(x1+25,y1+75) <> 0 then
      begin
        tf:=false;
      end;
      if keypressed then c:=readkey;
      if c = '=' then inc(x1,50);
      if c = '`' then dec(x1,50);
      for a:=0 to 3 do
      begin
        ColorSquare();
        x1:=x1+50;
      end;
      c:='u';
      
      delay(750);
      dec(x1,200);
      if y1 < 859 then
      for a:=0 to 3 do
      begin
        putimage(x1,y1,cage_buff,1);
        x1:=x1+50;
      end;
      dec(x1,200);
      inc(y1,50);
      
  end;
end;

begin
  InitGraph(a, b, '/sdcard/EGAVGA.BGI');
  setLineStyle(4, 50, 50);
  setcolor(- 12990977);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_blue);
  setcolor(- 65536);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_red);
  setcolor(- 3211520);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_yellow);
  setcolor(- 16711910);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_green);
  setcolor(- 13434625);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_darkblue);
  setcolor(- 65381);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_pink);
  setcolor(- 26368);
  bar(50, 45, 50, 45);
  getimage(25, 20, 75, 70, square_orange);
  setcolor(green);
  setLineStyle(5, 2000, 2000);
  bar(10, 10, 1070, 950);
  setLineStyle(5, 3, 3);
  setColor(red);
  bar(288, 8, 792, 912);
  bar(820, 50, 1070, 150);
  bar(820, 160, 1070, 600);
  setcolor(black);
  setLineStyle(5, 500, 500);
  bar(540, 260, 540, 660);
  setLineStyle(5, 250, 250);
  line(945, 160, 945, 600);
  setLineStyle(5, 50, 50);
  bar(846, 76, 1044, 124);
  setLineStyle(4, 2, 2);
  setColor(red);
  SetTextStyle(DefaultFont, HorizDir, 3);
  //outtextxy();
  outTextXY(820, 50, 'score:');
  outTextXY(820, 160, 'next:');
  setLineStyle(4, 2, 2);
  setColor(1543452985);
  x1 := 340;
  y1 := 60;
  for a := 0 to 9 do 
    begin
      line(x1, 10, x1, 915);
      inc(x1, 50);
    end;
  for a := 0 to 16 do 
    begin
      line(290, y1, 790, y1);
      inc(y1, 50);
    end;
  //отладочный вывод
  putimage(100, 200, square_blue, 1);
  putimage(100, 250, square_red, 1);
  putimage(100, 300, square_yellow, 1);
  putimage(100, 350, square_green, 1);
  putimage(100, 400, square_darkblue, 1);
  putimage(100, 450, square_pink, 1);
  putimage(100, 500, square_orange, 1);
  putimage(100, 550, square_green, 1);
  getimage(340, 59, 391, 111, cage_buff);
  putimage(100, 150, cage_buff, 1);
  sline();
  sline();
  readln;
end.{ проверка линии
  if (getpixel(315,35) < 0) and 
    (getpixel(365,35) < 0) and 
    (getpixel(415,35) < 0) and
    (getpixel(465,35) < 0) and
    (getpixel(515,35) < 0) and
    (getpixel(565,35) < 0) and
    (getpixel(615,35) < 0) and
    (getpixel(665,35) < 0) and
    (getpixel(715,35) < 0) and
    (getpixel(765,35) < 0) then
    write('да');}
