// Thigs from space by MegBoyZZ

// idea for this game was taken from spy fox 2

// if you want to improve my code then write to

// me on my vk.com page vk.com/iloveowsla

// have fun !!


uses
  crt, graph;


var
  a, b, i, xplus, yminus, x, y, spaceship_buff,
  spaceship_clear_buff: integer;
  input:string;
procedure stars();
begin
  randomize();
  for i := 0 to 1500 do 
    begin
      yminus := Random(945);
      xplus := random(810);
      if yminus < 10 then
        begin
          inc(yminus, 20) 
        end ;
      if xplus < 270 then
        begin
          inc(xplus, 270);
        end ;
      putPixel(xplus, yminus, White);
    end;
end;

begin
  initGraph(a, b, '');
  getimage(490,778,643,941,spaceship_clear_buff);
  setcolor(DarkGray);
  setLineStyle(5, 2000, 2000);
  bar(10, 10, 1070, 950);
  setLineStyle(5, 2, 2);
  setColor(red);
  bar(270, 10, 810, 945);
  setcolor(black);
  setLineStyle(5, 500, 500);
  bar(520, 260, 560, 695);
  putPixel(271, 11, red);
  putPixel(810, 945, red);
  
  stars();
  setcolor(White);
  setLineStyle(5, 10, 10);
  y := 935;
  for i := 0 to 5 do 
    begin
      bar(800, y, 800, y);
      dec(y, 10);
    end;
  setcolor(red);
  bar(800, 875, 800, 875);
  bar(800, 865, 800, 865);
  setcolor(white);
  bar(790, 925, 790, 925);
  bar(790, 915, 790, 915);
  bar(790, 905, 790, 905);
  bar(780, 915, 780, 915);
  bar(780, 905, 780, 905);
  bar(780, 895, 780, 895);
  bar(770, 905, 770, 895);
  bar(770, 895, 770, 895);
  bar(770, 885, 770, 885);
  setcolor(blue);
  bar(770, 875, 770, 875);
  setcolor(white);
  bar(770, 865, 770, 865);
  bar(770, 855, 770, 855);
  bar(770, 845, 770, 845);
  setcolor(red);
  bar(770, 845, 770, 845);
  bar(770, 835, 770, 835);
  bar(760, 925, 760, 925);
  bar(760, 915, 760, 915);
  setcolor(white);
  bar(760, 905, 760, 905);
  bar(760, 895, 760, 895);
  bar(760, 885, 760, 885);
  bar(760, 875, 760, 875);
  setcolor(blue);
  bar(760, 865, 760, 865);
  setcolor(red);
  bar(750, 925, 750, 925);
  bar(750, 915, 750, 915);
  bar(750, 905, 750, 905);
  setcolor(white);
  bar(750, 895, 750, 895);
  bar(750, 885, 750, 885);
  bar(750, 875, 750, 875);
  bar(750, 865, 750, 865);
  bar(750, 855, 750, 855);
  bar(740, 915, 740, 915);
  bar(740, 905, 740, 905);
  bar(740, 895, 740, 895);
  setcolor(red);
  bar(740, 885, 740, 885);
  bar(740, 875, 740, 875);
  setcolor(white);
  bar(740, 865, 740, 865);
  bar(740, 855, 740, 855);
  bar(740, 845, 740, 845);
  bar(740, 835, 740, 835);
  bar(740, 825, 740, 825);
  bar(740, 815, 740, 815);
  bar(730, 805, 730, 805);
  bar(730, 795, 730, 795);
  bar(730, 785, 730, 785);
  bar(730, 815, 730, 815);
  bar(730, 825, 730, 825);
  bar(730, 835, 730, 835);
  bar(730, 845, 730, 845);
  bar(730, 855, 730, 855);
  setcolor(red);
  bar(730, 865, 730, 865);
  bar(730, 875, 730, 875);
  setcolor(white);
  bar(730, 885, 730, 885);
  bar(730, 895, 730, 895);
  bar(730, 905, 730, 905);
  bar(730, 915, 730, 915);
  bar(730, 925, 730, 925);
  bar(730, 935, 730, 935);
  bar(720, 815, 720, 815);
  bar(720, 825, 720, 825);
  bar(720, 835, 720, 835);
  bar(720, 845, 720, 845);
  bar(720, 855, 720, 855);
  bar(720, 865, 720, 865);
  setcolor(red);
  bar(720, 875, 720, 875);
  bar(720, 885, 720, 885);
  setcolor(white);
  bar(720, 895, 720, 895);
  bar(720, 905, 720, 905);
  bar(720, 915, 720, 915);
  bar(710, 855, 710, 855);
  bar(710, 865, 710, 865);
  bar(710, 875, 710, 875);
  bar(710, 885, 710, 885);
  bar(710, 895, 710, 895);
  setcolor(red);
  bar(710, 905, 710, 905);
  bar(710, 915, 710, 915);
  bar(710, 925, 710, 905);
  setcolor(red);
  bar(700, 925, 700, 925);
  bar(700, 915, 700, 915);
  setcolor(white);
  bar(700, 905, 700, 905);
  bar(700, 895, 700, 895);
  bar(700, 885, 700, 885);
  bar(700, 875, 700, 875);
  delay(20);
  setcolor(blue);
  bar(700, 865, 700, 865);
  setcolor(red);
  bar(690, 845, 690, 845);
  bar(690, 835, 690, 835);
  setcolor(white);
  bar(690, 865, 690, 865);
  bar(690, 855, 690, 855);
  setcolor(blue);
  bar(690, 875, 690, 875);
  setcolor(white);
  bar(690, 885, 690, 885);
  bar(690, 895, 690, 895);
  bar(690, 905, 690, 905);
  bar(680, 895, 680, 895);
  bar(680, 905, 680, 905);
  bar(680, 915, 680, 915);
  bar(670, 925, 670, 925);
  bar(670, 915, 670, 915);
  bar(670, 905, 670, 905);
  delay(20);
  y := 935;
  for i := 0 to 5 do 
    begin
      bar(660, y, 660, y);
      dec(y, 10);
    end;
  setcolor(red);
  bar(660, 875, 660, 875);
  bar(660, 865, 660, 865);
  putpixel(800,935,red);
  putpixel(806,940,red);
  setLineStyle(5, 0, 0);
  //getimage(490,778,643,941,spaceship_clear_buff);
  getimage(653,778,806,941,spaceship_buff);
  x:=653;
  y:=778;
  while true do
  begin
  input:=readkey;
  if input = 't' then
  begin
    putimage(x,y,spaceship_clear_buff,1);
    dec(y,10);
    stars();
    putimage(x,y,spaceship_buff,1);
    input:='+₩)£';
  end;
  if input = 'f' then
  begin
    putimage(x,y,spaceship_clear_buff,1);
    dec(x,10);
    putimage(x,y,spaceship_buff,1);
    input:='+₩)£';
  end;
  if input = 'h' then
  begin
    putimage(x,y,spaceship_clear_buff,1);
    inc(x,10);
    putimage(x,y,spaceship_buff,1);
    input:='+₩)£';
  end;
  if input = 'v' then
  begin
    putimage(x,y,spaceship_clear_buff,1);
    inc(y,10);
    putimage(x,y,spaceship_buff,1);
    input:='+₩)£';
  end;
  end;
  readln 
end.

{
  окошко
  setcolor(DarkGray);
  setLineStyle(5, 2000, 2000);
  bar(10, 10, 1070, 950);
  setLineStyle(5, 2, 2);
  setColor(red);
  bar(270, 10, 810, 945);
  setcolor(black);
  setLineStyle(5, 500, 500);
  bar(520, 260, 560, 695);
  putPixel(271, 11, red);
  putPixel(810, 945, red);
  
  
  космос
  randomize();
  for i := 0 to 1500 do 
    begin
      yminus := Random(945);
      xplus := random(810);
      if yminus < 10 then
        begin
          inc(yminus, 20) 
        end ;
      if xplus < 270 then
        begin
          inc(xplus, 270);
        end ;
      putPixel(xplus, yminus, White);
    end;
    
   движение влево с параметром скорости x y
  y:=778;
  x:=653;
  for i:=0 to 100 do
  begin
  putimage(x,y,spaceship_clear_buff,1);
  dec(y,100);
  dec(x,2);
  putimage(x,y,spaceship_buff,1);
  delay(50);
  end;
    }
