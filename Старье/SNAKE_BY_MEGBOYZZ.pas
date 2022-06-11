uses
  crt, Graph, aVibrate;


var
  i, x, x1, y, y1, long, speed: integer;
  c, ctmp: char;
  
procedure check();

begin
  if ((x = 10) or (x = 1070)) or ((y = 100) or (y = 900)) then
  begin
    vibrate(200);
    vibrate(200);
    while not keypressed do
      begin
        setcolor(red); 
        outTextXY(300, 400, 'GAME OVER') ;
      end;
      continue ; 
  end;
end; 

begin
  initGraph(detect, detect, '/sdcard/EGAVGA.BGI');
  setLineStyle(5, 3, 3);
  bar(10, 100, 1070, 900);
  bar(640, 100, 1070, 55);
  bar(10, 100, 250, 55);
  bar(250, 100, 640, 55);
  SetTextStyle(DefaultFont, HorizDir, 3);
  outTextXY(640, 60, 'SNAKE BY MEGBOYZZ V0.1');
  outTextXY(15, 60, 'SCORE:');
  outTextXY(251, 60, 'LAST SCORE:');
  setLineStyle(5, 1, 1);
  speed := 5;
  long := 100;
  x := 100;
  y := 400;
  x1 := 90;
  y1 := 400;
  ctmp:='=';
  //c:='=';
  SetTextStyle(DefaultFont, HorizDir, 5);
  while not keypressed do 
    begin
      setcolor(random(- 50887));
      outTextXY(30, 400, 'PRESS ANY KEY TO START THE GAME');
      delay(20);
    end;
  setcolor(black);
  setlinestyle(5, 100, 100);
  line(20, 450, 1050, 450);
  while true do
  begin
  c:=readkey;
    if c = '=' then
      begin
        putpixel(x,y,white);
        inc(x);
        delay(10);
      end;
    if c = '+' then
      begin
        putpixel(x,y,white);
        dec(y);
        delay(10);
      end;
    if c = '-' then
      begin
        putpixel(x,y,white);
        inc(y);
        delay(10);
      end;
    if c = '`' then
      begin
        putpixel(x,y,white);
        dec(x);
        delay(10);
      end;
  end;
  readln;
  closeGraph();
end.
{___________________________________________________
     +
   ` , =
     -
     
    }
