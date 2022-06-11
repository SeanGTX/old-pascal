// x = 1080
// y = 1710
uses Graph,crt,aRecognition;
var
  x,y,i,cage_buff, 
  square_blue, square_red, square_yellow, 
  square_green, square_darkblue, square_pink, 
  square_orange:integer;
  start:Boolean; 
  strl:string;
begin
  initGraph(detect, detect, '/sdcard/EGAVGA.BGI');  
  setLineStyle(0,50,50);
  setcolor(-16730881);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_blue);
  
  setcolor(Red);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_red);
  
  setcolor(Yellow);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_yellow);
  
  setcolor(Green);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_green);
  
  setcolor(Blue);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_darkblue);
  
  setcolor(-65305);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_pink);
  
  setcolor(-26368);
  bar(100,100,100,100);
  getimage(75,75,125,125,square_orange);
  
  setcolor(DarkGray);
  setLineStyle(0,0,680);
  bar(200,200,880,1510);
  
  setcolor(black);
  setLineStyle(0,0,200);
  bar(400,300,650,400);
  setLineStyle(0,0,1);
  setcolor(red);
  bar(300,200,750,500);
  strl:=SpeechTotext;
  start:=true;
  SetTextStyle(DefaultFont, HorizDir, 10);  
  randomize;
  while start do
  begin
    setcolor(random(10));
    OutTextXY(330,300,'TETRIS');
    delay(15);
  end;
  readln;
  CloseGraph;
end.
