program move;
uses crt,graph;
var
  a,b,y,x:Integer;
  c:char;
  tf:Boolean;
    procedure CheckBottom();
    begin
    c:=readkey;
  if c = 'w' then
  begin
    tf:=true;
    while tf = true do
    begin
      c:=readkey;
      if (c = 's') or (c = 'a') or (c = 'd') then
      begin
        tf:=false;
        checkbottom();
      end;
      if c = 'w' then
      begin
        putpixel(x,y,red);
        dec(y);
      end;
    end;
  end;
  
  if c = 's' then
  begin
   tf:=true;
    while tf = true do
    begin
      c:=readkey;
      if (c = 'w') or (c = 'a') or (c = 'd') then
      begin
        tf:=false;
        checkbottom();
      end;
      if c = 's' then
      begin
        putpixel(x,y,red);
        inc(y);
      end;
      end;
    end; 
  
  
  if c = 'a' then
  begin
    tf:=true;
    while tf = true do
    begin
      c:=readkey;
      if (c = 'w') or (c = 's') or (c = 'd') then
      begin
        tf:=false;
        checkbottom();
      end;
      if c = 'a' then
      begin
        putpixel(x,y,red);
        dec(x);
      end;
      end;
    end; 
 
  
  if c = 'd' then
  begin
    tf:=true;
    while tf = true do
    begin
      c:=readkey;
      if (c = 'w') or (c = 's') or (c = 'a') then
      begin
        tf:=false;
        checkbottom();
      end;
      if c = 'd' then
      begin
        putpixel(x,y,red);
        inc(x);
      end;
    end; 
   end;
   
    end;
    
    
    
    
begin
  initgraph(a,b,'');
  setcolor(red);
  bar(10,10,1060,940);
  x:=540;
  y:=425;
  putpixel(x,y,red);
  circle(x,y,10);
  checkbottom();
  ReadLn;
end.
