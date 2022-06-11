
uses
  CRT, Graph, aDialog, aRecognition;


var
  ControlType, Difficulty, GameMode, CoordinateXY: String;
  PlayerFiled, BotFiled: array [0..10, 0..10] of Integer;
  sym: char;
  tf: Boolean;
  i, i1, x, y, x1, y1, x2, y2, L, ShipNum, Ship, ShipDestroyed, o, o1, CleanScreen: integer;

procedure ClearScreen();

begin
  // initGraph(0, 0, '/sdcard/EGAVGA.BGI');
  putimage(0, 0, CleanScreen, 1);
  CloseGraph;
end; 
procedure DrawGameFiled();

begin
  initGraph(0, 0, '/sdcard/EGAVGA.BGI');
  //getimage(0,0,1050,1710,CleanScreen);
  getimage(0, 0, 10, 17, CleanScreen);
  setLineStyle(0, 50, 50);
  setcolor(- 7105645);
  bar(100, 100, 100, 100);
  getimage(75, 75, 125, 125, Ship);
  setcolor(black);
  setLineStyle(0, 1, 2);
  line(75, 75, 125, 125);
  line(125, 75, 75, 125);
  getimage(75, 75, 125, 125, ShipDestroyed);
  setcolor(DarkGray);
  setLineStyle(0, 0, 680);
  bar(200, 200, 880, 1510);
  setcolor(red);
  setLineStyle(0, 0, 1);
  SetFillStyle(1, black);
  y1 := 100;
  y2 := 150;
  for i := 0 to 9 do 
    begin
      x1 := 250;
      x2 := 300;
      for i := 0 to 9 do 
        begin
          bar(x1, y1, x2, y2);
          inc(x1, 50);
          inc(x2, 50);
        end;
      inc(y1, 50);
      inc(y2, 50);
    end;
  y1 := 700;
  y2 := 750;
  for i := 0 to 9 do 
    begin
      x1 := 250;
      x2 := 300;
      for i := 0 to 9 do 
        begin
          bar(x1, y1, x2, y2);
          inc(x1, 50);
          inc(x2, 50);
        end;
      inc(y1, 50);
      inc(y2, 50);
    end;
  x1 := 260;
  y1 := 710;
  SetTextStyle(DefaultFont, HorizDir, 3);
  OutTextXY(150, 20, 'Ваше Поле:');
  sym := 'А';
  x1 := 260;
  y1 := 110;
  for i := 0 to 9 do 
    begin
      OutTextXY(x1, 60, sym);
      inc(x1, 50);
      inc(sym);
    end;
  sym := '1';
  for i := 0 to 8 do 
    begin
      OutTextXY(210, y1, sym);
      inc(y1, 50);
      inc(sym);
    end;
  OutTextXY(200, 560, '10');
  y1 := 700;
  y2 := 750;
  for i := 0 to 9 do 
    begin
      x1 := 250;
      x2 := 300;
      for i := 0 to 9 do 
        begin
          bar(x1, y1, x2, y2);
          inc(x1, 50);
          inc(x2, 50);
        end;
      inc(y1, 50);
      inc(y2, 50);
    end;
  OutTextXY(150, 610, 'Поле противника:');
  sym := 'А';
  x1 := 260;
  y1 := 710;
  for i := 0 to 9 do 
    begin
      OutTextXY(x1, 660, sym);
      inc(x1, 50);
      inc(sym);
    end;
  sym := '1';
  for i := 0 to 8 do 
    begin
      OutTextXY(210, y1, sym);
      inc(y1, 50);
      inc(sym);
    end;
  OutTextXY(200, 1160, '10');
end; 
procedure InterpreterAndOutput(x: integer;
y: integer; 
ship: integer); 

var
  xPos, yPos: integer;


begin
  xPos := 50 * (x - 1) + 250;
  yPos := 50 * (y - 1) + 100;
  putimage(xPos, yPos, ship, 1);
end; 
procedure OutputShipsOnFlied(ship: Integer);

begin
  y1 := 1;
  for i := 0 to 9 do 
    begin
      x1 := 1;
      for i := 0 to 9 do 
        begin
          if PlayerFiled[x1, y1] = 1 then
            InterpreterAndOutput(x1, y1, ship) ;
          inc(x1);
        end;
      inc(y1);
    end;
end; 
procedure TextInput();

begin
  while tf do 
    begin
      CoordinateXY := DialogGetInput('Bведитe кooрдинаты точек корабля через пробел', 'Hапримеp: А2 А3 А4 А5', '');
      
    end;
end; 
procedure SaveXY();

begin
  CoordinateXY := CoordinateXY + ' ';
  L := Length(CoordinateXY);
  for i := 1 to L do 
    begin
      if (CoordinateXY[i] <= 1049) and (CoordinateXY[i] >= 1040) then
        begin
          x := ord(CoordinateXY[i]) - 1039;
        end ;
      if (CoordinateXY[i] <= 1081) and (CoordinateXY[i] >= 1072) then
        begin
          x := ord(CoordinateXY[i]) - 1071;
        end ;
      if (CoordinateXY[i] <= 57) and (CoordinateXY[i] >= 49) then
        begin
          y := ord(CoordinateXY[i]) - 48;
          if CoordinateXY[i + 1] = 48 then
            y := 10 ;
        end ;
      PlayerFiled[x, y] := 1;
    end;
end; 

begin
  clrscr();
  DrawGameFiled;
  delay(1500);
  repeat 
    ControlType := dialogGetInput('SeaBattel by MEGBOYZZ v0.1 Выберете тип управления: ', 'Текстовой - 1 или голосовой - 2 и нажмите ок', '');
  until (ControlType = '1') or (ControlType = '2');
  repeat 
    Difficulty := dialogGetInput('SeaBattel by MEGBOYZZ v0.1  Выберете сложность бота: ', 'Легкий - 1 средний - 2 тяжелый - 3 и нажмите ок', '');
  until (Difficulty = '1') or (Difficulty = '2') or (Difficulty = '3');
  if ControlType = '2' then
    begin
      DialogAlert('Голосовой ввод пока что в разработке))', 'Введи текстом))', true);
      delay(3000);
    end ;
  if ControlType = '1' then
    for i1 := 1 to 10 do 
      begin
        TextInput();
        SaveXY();
        OutputShipsOnFlied(Ship);
        delay(3000);
        //  ClearScreen;
        for o := 1 to 10 do 
          begin
            for o1 := 1 to 10 do 
              begin
                write(PlayerFiled[o1, o] + ' ');
              end;
            writeln(' ');
          end;
        readln();
        DrawGameFiled;
      end ;
  readln;
  CloseGraph();
end.
