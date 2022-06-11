uses crt,graph,aSensor;
var
  a,b,g,h:Integer;
 x,y:real;
begin
   initgraph(a,b,'');
   startsensor(2);
   g:=540;
   h:=425;
   while true do
   begin
        Randomize();
        setcolor(random(10));
        x:=getxaccelerometer;
        y:=getyaccelerometer;
        circle(g,h,random(100));
        
        while x > 1 do
          begin
            circle(g,h,random(100));
            // putpixel(g,h,10);
            dec(g);
            x:=getxaccelerometer;
            delay(10);
          end;
        
        while x < -1 do
        begin
        circle(g,h,random(100));
        //putpixel(g,h,10);
        inc(g);
        x:=getxaccelerometer;
        delay(10);
        end; 
        
        while y > 1 do
        begin
        circle(g,h,random(100));
        //putpixel(g,h,10);
        inc(h);
        y:=getxaccelerometer;
        delay(10);
        end;
        
        
        while y < -1 do
        begin
        circle(g,h,random(100));
       // putpixel(g,h,10);
        dec(h);
        y:=getxaccelerometer;
        delay(10);
        end;
        
        while (x > 1) and (y > 1) do
        begin
          circle(g,h,100);
          dec(g);
          inc(h);
          y:=getxaccelerometer;
          delay(10);
        end;
        
      end;
end.
