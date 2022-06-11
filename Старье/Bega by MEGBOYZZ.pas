//  BEGA BY MEGBOYZZ v0.5

//  if you want to improve my code then

//  send code to me

//  my vk page 

//  vk.com/iloveowsla

{
r - переменная которая отвечает за рандомный выбор
дорожки в движении
buff - изображение коня
buff2 - изображение стерки шлейфа от коня
player1..4 - имена игроков
select_p1[1..0] выбор игрока 1
0 - дорожка
1 - ставка
select_p2[1..0] выбор игрока 2
0 - дорожка
1 - ставка
select_p3[1..0] выбор игрока 3
0 - дорожка
1 - ставка
select_p4[1..0] выбор игрока 4
0 - дорожка
1 - ставка
bank - сумма ставок которая отдается победителю
}

uses
  Crt, Graph;


var
  a, bank, buff, buff2, r, c1: Integer;
  player1, player2, player3, player4: String;
  select_p1, select_p2, select_p3, select_p4: array [0..1] of integer;
  cash, i: array [1..4] of Integer;


begin
  Clrscr;
  bank := 0;
  cash[1] := 100000;
  cash[2] := 100000;
  cash[3] := 100000;
  cash[4] := 100000;
  WriteLn('Бега v0.5');
  WriteLn('Введите имя 1 игрока');
  Readln(player1);
  WriteLn('Введите имя 2 игрока');
  Readln(player2);
  WriteLn('Введите имя 3 игрока');
  Readln(player3);
  WriteLn('Введите имя 4 игрока');
  Readln(player4);
  Clrscr;
  while true do 
    begin
      WriteLn('Бега v0.4');
      Writeln('При вводе не верной дорожки или ставки будет сниматся 10000 $!!');
      Writeln('При ставке меньше 5000$ также будет сниматься 10000$!');
      WriteLn('______________________');
      WriteLn('Кол-во денег игроков');
      WriteLn(player1, ' = ', cash[1], ' $');
      WriteLn(player2, ' = ', cash[2], ' $');
      WriteLn(player3, ' = ', cash[3], ' $');
      WriteLn(player4, ' = ', cash[4], ' $');
      WriteLn('______________________');
      WriteLn('Выбор и ставка ', player1);
      Write('Дорожка = ');
      ReadLn(select_p1[0]);
      if (select_p1[0] > 4) or (select_p1[0] < 0) or (select_p1[0] = 0) then
        repeat 
          Writeln('Неверная дорожка!! - 10000$!!');
          cash[1] := cash[1] - 10000;
          Write('Дорожка = ');
          ReadLn(select_p1[0]);
        until (select_p1[0] = 4) or (select_p1[0] = 3) or (select_p1[0] = 2) or (select_p1[0] = 1) ;
      Write('Ставка = ');
      readln(select_p1[1]);
      if (select_p1[1] > cash[1]) or (select_p1[1] < 5000) then
        begin
          if select_p1[1] > cash[1] then
            repeat 
              Writeln('взял больше чем у тебя есть!! - 10000$!!');
              cash[1] := cash[1] - 10000;
              Write('Ставка = ');
              readln(select_p1[1]);
            until select_p1[1] < cash[1] ;
          if select_p1[1] < 5000 then
            repeat 
              Writeln('взял меньше чем 5000$!! - 10000$!!');
              cash[1] := cash[1] - 10000;
              Write('Ставка = ');
              readln(select_p1[1]);
            until select_p1[1] > 5000 ;
        end ;
      WriteLn('Выбор и ставка ', player2);
      Write('Дорожка = ');
      ReadLn(select_p2[0]);
      if (select_p2[0] > 4) or (select_p2[0] < 0) or (select_p2[0] = 0) then
        repeat 
          Writeln('Неверная дорожка!! - 10000$!!');
          cash[2] := cash[2] - 10000;
          Write('Дорожка = ');
          ReadLn(select_p2[0]);
        until (select_p2[0] = 4) or (select_p2[0] = 3) or (select_p2[0] = 2) or (select_p2[0] = 1) ;
      Write('Ставка = ');
      readln(select_p2[1]);
      if (select_p2[1] > cash[2]) or (select_p2[1] < 5000) then
        begin
          if select_p2[1] > cash[2] then
            begin
              repeat 
                Writeln('взял больше чем у тебя есть!! - 10000$!!');
                cash[2] := cash[2] - 10000;
                Write('Ставка = ');
                readln(select_p2[1]);
              until select_p2[1] < cash[2];
              if select_p2[1] < 5000 then
                repeat 
                  Writeln('взял меньше чем 5000$!! - 10000$!!');
                  cash[2] := cash[2] - 10000;
                  Write('Ставка = ');
                  readln(select_p2[1]);
                until select_p2[1] > 5000 ;
            end ;
        end ;
      WriteLn('Выбор и ставка ', player3);
      Write('Дорожка = ');
      ReadLn(select_p3[0]);
      if (select_p3[0] > 4) or (select_p3[0] < 0) or (select_p3[0] = 0) then
        begin
          repeat 
            Writeln('Неверная дорожка!! - 10000$!!');
            cash[3] := cash[3] - 10000;
            Write('Дорожка = ');
            ReadLn(select_p3[0]);
          until (select_p3[0] = 4) or (select_p3[0] = 3) or (select_p3[0] = 2) or (select_p3[0] = 1) end;
          Write('Ставка = ');
          readln(select_p3[1]);
          if (select_p3[1] > cash[3]) or (select_p3[1] <= 5000) then
            begin
              if select_p3[1] > cash[3] then
                repeat 
                  Writeln('взял больше чем у тебя есть!! - 10000$!!');
                  cash[3] := cash[3] - 10000;
                  Write('Ставка = ');
                  readln(select_p3[1]);
                until select_p3[1] < cash[3] ;
              if select_p3[1] < 5000 then
                repeat 
                  Writeln('взял меньше чем 5000$!! - 10000$!!');
                  cash[3] := cash[3] - 10000;
                  Write('Ставка = ');
                  readln(select_p3[1]);
                until select_p3[1] > 5000 ;
            end ;
          WriteLn('Выбор и ставка ', player4);
          Write('Дорожка = ');
          ReadLn(select_p4[0]);
          if (select_p4[0] > 4) or (select_p4[0] < 0) or (select_p4[0] = 0) then
            begin
              repeat 
                Writeln('Неверная дорожка!! - 10000$!!');
                cash[4] := cash[4] - 10000;
                Write('Дорожка = ');
                ReadLn(select_p4[0]);
              until (select_p4[0] = 4) or (select_p4[0] = 3) or (select_p4[0] = 2) or (select_p4[0] = 1) end;
              Write('Ставка = ');
              readln(select_p4[1]);
              if (select_p4[1] > cash[4]) or (select_p4[1] < 5000) then
                begin
                  if select_p4[1] > cash[4] then
                    begin
                      repeat 
                        Writeln('взял больше чем у тебя есть!! - 10000$!!');
                        cash[4] := cash[4] - 10000;
                        Write('Ставка = ');
                        readln(select_p4[1]);
                      until select_p4[1] < cash[5] end;
                      if select_p4[1] < 5000 then
                        begin
                          repeat 
                            Writeln('взял меньше чем 5000$!! - 10000$!!');
                            cash[4] := cash[4] - 10000;
                            Write('Ставка = ');
                            readln(select_p4[1]);
                          until select_p4[1] > 5000 end;
                        end ;
                      cash[1] := cash[1] - select_p1[1];
                      cash[2] := cash[2] - select_p2[1];
                      cash[3] := cash[3] - select_p3[1];
                      cash[4] := cash[4] - select_p4[1];
                      bank := select_p1[1] + select_p2[1] + select_p3[1] + select_p4[1];
                      initGraph(0, 0, '/sdcard/EGAVGA.BGI');
                      setcolor(LightGreen);
                      SetTextStyle(DefaultFont, HorizDir, 2);
                      OutTextXY(30, 5, '1 дорожка');
                      bar(30, 30, 1050, 220);
                      line(150, 30, 150, 220);
                      line(170, 30, 170, 220);
                      line(950, 30, 950, 220);
                      line(930, 30, 930, 220);
                      //отрисовка лошади 1
                      line(50, 100, 115, 100);
                      line(50, 100, 50, 150);
                      line(50, 150, 65, 150);
                      line(65, 150, 65, 120);
                      line(65, 120, 85, 120);
                      line(85, 120, 85, 150);
                      line(85, 150, 100, 150);
                      line(100, 150, 100, 115);
                      line(100, 115, 115, 115);
                      line(115, 115, 115, 100);
                      OutTextXY(30, 225, '2 дорожка');
                      bar(30, 250, 1050, 440);
                      line(150, 250, 150, 440);
                      line(170, 250, 170, 440);
                      line(950, 250, 950, 440);
                      line(930, 250, 930, 440);
                      //отрисовка лошади 2
                      line(50, 320, 115, 320);
                      line(50, 320, 50, 370);
                      line(50, 370, 65, 370);
                      line(65, 370, 65, 340);
                      line(65, 340, 85, 340);
                      line(85, 340, 85, 370);
                      line(85, 370, 100, 370);
                      line(100, 370, 100, 335);
                      line(100, 335, 115, 335);
                      line(115, 335, 115, 320);
                      OutTextXY(30, 445, '3 дорожка');
                      bar(30, 470, 1050, 670);
                      line(150, 470, 150, 670);
                      line(170, 470, 170, 670);
                      line(950, 470, 950, 670);
                      line(930, 470, 930, 670);
                      //отрисовка лошади 3
                      line(50, 540, 115, 540);
                      line(50, 540, 50, 590);
                      line(50, 590, 65, 590);
                      line(65, 590, 65, 560);
                      line(65, 560, 85, 560);
                      line(85, 560, 85, 590);
                      line(85, 590, 100, 590);
                      line(100, 590, 100, 555);
                      line(100, 555, 115, 555);
                      line(115, 555, 115, 540);
                      OutTextXY(30, 685, '4 дорожка');
                      bar(30, 710, 1050, 910);
                      line(150, 710, 150, 910);
                      line(170, 710, 170, 910);
                      line(950, 710, 950, 910);
                      line(930, 710, 930, 910);
                      //отрисовка лошади 4
                      line(50, 760, 115, 760);
                      line(50, 760, 50, 810);
                      line(50, 810, 65, 810);
                      line(65, 810, 65, 780);
                      line(65, 780, 85, 780);
                      line(85, 780, 85, 810);
                      line(85, 810, 100, 810);
                      line(100, 810, 100, 775);
                      line(100, 775, 115, 775);
                      line(115, 775, 115, 760);
                      getimage(49, 99, 116, 151, buff);
                      getimage(1, 1, 2, 51, buff2);
                      c1 := 0;
                      i[1] := 50;
                      i[2] := 50;
                      i[3] := 50;
                      i[4] := 50;
                      while (not (i[1] = 970)) and (not (i[2] = 970)) and (not (i[3] = 970)) and (not (i[4] = 970)) do 
                        begin
                          randomize;
                          r := random(4);
                          if r = 1 then
                            begin
                              for a := 0 to 20 do 
                                begin
                                  if i[1] = 970 then
                                    begin
                                      c1 := 1;
                                      continue ;
                                    end ;
                                  putimage(i[1], 99, buff, 7);
                                  inc(i[1]);
                                  if (i[1] = 151) or (i[1] = 171) or (i[1] = 931) or (i[1] = 951) then
                                    begin
                                      inc(i[1]);
                                      break ;
                                    end ;
                                  putimage(i[1] - 2, 100, buff2, 1);
                                  delay(5);
                                end;
                            end ;
                          if r = 2 then
                            begin
                              for a := 0 to 20 do 
                                begin
                                  if i[2] = 970 then
                                    begin
                                      c1 := 2;
                                      continue ;
                                    end ;
                                  putimage(i[2], 319, buff, 7);
                                  inc(i[2]);
                                  if (i[2] = 151) or (i[2] = 171) or (i[2] = 931) or (i[2] = 951) then
                                    begin
                                      inc(i[2]);
                                      continue ;
                                    end ;
                                  putimage(i[2] - 2, 320, buff2, 1);
                                  delay(5);
                                end;
                            end ;
                          if r = 3 then
                            begin
                              for a := 0 to 20 do 
                                begin
                                  if i[3] = 970 then
                                    begin
                                      c1 := 3;
                                      continue 
                                    end ;
                                  putimage(i[3], 539, buff, 7);
                                  inc(i[3]);
                                  if (i[3] = 151) or (i[3] = 171) or (i[3] = 931) or (i[3] = 951) then
                                    begin
                                      inc(i[3]);
                                      continue ;
                                    end ;
                                  putimage(i[3] - 2, 540, buff2, 1);
                                  delay(5);
                                end;
                            end ;
                          if r = 4 then
                            begin
                              for a := 0 to 20 do 
                                begin
                                  if i[4] = 970 then
                                    begin
                                      c1 := 4;
                                      continue ;
                                    end ;
                                  putimage(i[4], 759, buff, 7);
                                  inc(i[4]);
                                  if (i[4] = 151) or (i[4] = 171) or (i[4] = 931) or (i[4] = 951) then
                                    begin
                                      inc(i[4]);
                                      continue ;
                                    end ;
                                  putimage(i[4] - 2, 760, buff2, 1);
                                  delay(5);
                                end;
                            end ;
                        end;
                      closegraph;
                      WriteLn('______________________');
                      if select_p1[0] = c1 then
                        begin
                          Writeln(player1, ' победил!');
                          Writeln('он полчает ', bank, ' $!');
                          cash[1] := cash[1] + bank;
                        end ;
                      if select_p2[0] = c1 then
                        begin
                          Writeln(player2, ' победил!');
                          Writeln('он полчает ', bank, ' $!');
                          cash[2] := cash[2] + bank;
                        end ;
                      if select_p3[0] = c1 then
                        begin
                          Writeln(player3, ' победил!');
                          Writeln('он полчает ', bank, ' $!');
                          cash[3] := cash[3] + bank;
                        end ;
                      if select_p4[0] = c1 then
                        begin
                          Writeln(player4, ' победил!');
                          Writeln('он полчает ', bank, ' $!');
                          cash[4] := cash[4] + bank;
                        end ;
                      Writeln('следующий раунд через:');
                      delay(1000);
                      Write('5.');
                      delay(1000);
                      Write('4.');
                      delay(1000);
                      Write('3.');
                      delay(1000);
                      Write('2.');
                      delay(1000);
                      Write('1.');
                      clrscr;
                    end ;
                end .
