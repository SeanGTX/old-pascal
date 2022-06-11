uses crt;
var
  magic,input,count:integer;
begin
  clrscr();
  Randomize();
  magic:=Random(1000);
  Write('выбор числа = '); readln(input);
  if magic = input then 
    WriteLn('вы угадали число с первой попытки!!');
      while not(magic = input) do
        begin
        inc(count);
          if magic > input then
            WriteLn('Вы не угадали число. Число должно быть больше!!')
          else
            WriteLn('Вы не угадали число. Число должно быть меньше!!');
           Write('выбор числа = '); readln(input);
        end;
       if not(count = 0) then WriteLn('Вы угадали число ',magic,'!!',' Кол-во попыток: ',count);
  readln;
end.
