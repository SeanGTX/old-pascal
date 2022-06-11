program yy; 

uses
  crt;


var
  s: set of 'a'..'z';
  s1: set of 'A'..'Z';
  stra:string;
  n: set of 10..68;
  i, Code: Integer;



begin
  stra:='g';
  if stra in s then wtite(true);
  readln;
end.
