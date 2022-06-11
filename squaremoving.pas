uses crt,Graph;
var
Gd,Gm,a,x,y:Integer;
begin
  Gd:=Detect;
  InitGraph(Gd,Gm,'');
  a:=1;
  x:=1;
  y:=200;
  while true do
  begin
     randomize;
    setcolor(random(10));
   // line(random(1080),random(1700),random(1080),random(1700));
    inc(x,2);
    inc(y);
    bar(x,x,y,y);
    inc(x);
    inc(y);
    
    delay(20);
  end;
  
  ReadLn();
end.

