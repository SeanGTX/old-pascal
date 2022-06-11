uses crt, Graph;
begin
  SetColor(LightGreen);
  setTextStyle(defaultfont,horizdir,10);
  setLineStyle(0,1,1);
  initGraph(0,0,'');
  outTextXY(100,200,'Al');
  outTextXY(100,600,'Al');
  outTextXY(400,200,'O');
  outTextXY(400,600,'O');
  outTextXY(400,400,'O');
  
  //Line(100,200,200,200);
  {Line(210,280,390,430);
  Line(210,640,390,450);}
  
  //Line(210,660,390,450);
  line(100,200,600,200);
  line(400,200,400,600);
  line(100,300,600,300);
  putPixel(100,200,LightGreen);
  readln;
  closeGraph();
end.
