unit system; 

interface
uses
  crt, aDialog;

function MolarMass() : integer;

implementation

function MolarMass() : integer;

var
  DividedStr: array [1..30] of String;
  sub, ViewStr, ViewDivStr, ViewNum: String;
  index, i, Mr, MrOne, Multi, LengthDivStr, MrInBrakets: integer;
  Table: Text;
  brakets, err: Boolean;


begin
  sub := DialogGetInput('Введите вещество', '', '');
  sub := sub + ' ';
  i := 1;
  while i < Length(sub) do 
    begin
      index := index + 1;
      if (sub[i + 1] >= 97) and (sub[i + 1] <= 122) then
        begin
          Dividedstr[index] := copy(sub, i, 2);
          i := i + 2;
        end 
      else if ((sub[i] >= 48) and (sub[i] <= 57)) and ((sub[i + 1] >= 48) and (sub[i + 1] <= 57)) then
        begin
          Dividedstr[index] := copy(sub, i, 2);
          i := i + 2;
        end 
      else if ((sub[i] >= 65) and (sub[i] <= 90)) or ((sub[i] >= 48) and (sub[i] <= 57)) or ((sub[i] = '(') or (sub[i] = ')')) then
        begin
          Dividedstr[index] := sub[i];
          i := i + 1;
        end ;
      if index > 30 then
        begin
          DialogAlert('Ошибка!', 'Неизвестный хим элемент - ' + Dividedstr[index] + ' проверьте написание формулы и попробуйте снова', true);
          i := 1;
          Dividedstr[i] := '';
          err := true;
          delay(1000);
          break ;
        end ;
    end;
  i := 1;
  while not (Dividedstr[i] = '') do 
    begin
      if not (Dividedstr[i] = '') then
        LengthDivStr := LengthDivStr + 1 ;
      i := i + 1;
    end;
  index := 1;
  Assign(Table, '/sdcard/таблица.txt');
  reset(Table);
  while index <= LengthDivStr do 
    begin
      if DividedStr[index] = '(' then
        begin
          brakets := true;
          index := index + 1;
        end ;
      while (not eof(Table)) and not (Dividedstr[index] = ViewDivStr) do 
        begin
          readln(Table, ViewStr);
          if ViewStr[2] = ' ' then
            ViewDivStr := copy(ViewStr, 1, 1)  
          else 
            ViewDivStr := copy(ViewStr, 1, 2);
          if (ViewStr[Length(ViewStr) - 2] >= 48) and (ViewStr[Length(ViewStr) - 2] <= 57) then
            ViewNum := copy(ViewStr, Length(ViewStr) - 2, 3)  
          else if (ViewStr[Length(ViewStr) - 1] >= 48) and (ViewStr[Length(ViewStr) - 1] <= 57) then
            ViewNum := copy(ViewStr, Length(ViewStr) - 1, 2)  
          else 
            ViewNum := copy(ViewStr, Length(ViewStr), 1);
          val(ViewNum, MrOne, i);
        end;
      if eof(Table) and not (Dividedstr[index] = ViewDivStr) then
        begin
          DialogAlert('Ошибка!', 'Неизвестный хим элемент - ' + Dividedstr[index] + ' проверьте написание формулы и попробуйте снова', true);
          err := true;
          delay(1000);
          break ;
        end ;
      if brakets then
        begin
          if (Dividedstr[index + 1] [1] >= 48) and (Dividedstr[index + 1] [1] <= 57) then
            begin
              Val(Dividedstr[index + 1], Multi, i);
              index := index + 1;
            end 
          else 
            Multi := 1;
          MrInBrakets := MrInBrakets + MrOne * Multi;
        end 
      else if not (Dividedstr[index + 1] = '') then
        begin
          if (Dividedstr[index + 1] [1] >= 48) and (Dividedstr[index + 1] [1] <= 57) then
            begin
              Val(Dividedstr[index + 1], Multi, i);
              index := index + 1;
            end 
          else 
            Multi := 1;
        end 
      else 
        Multi := 1;
      if not brakets then
        Mr := Mr + MrOne * Multi ;
      if Dividedstr[index + 1] = ')' then
        begin
          brakets := false;
          if (Dividedstr[index + 2] [1] >= 48) and (Dividedstr[index + 2] [1] <= 57) then
            begin
              Val(Dividedstr[index + 2], Multi, i);
              index := index + 1;
            end ;
          Mr := Mr + MrInBrakets * Multi;
          index := index + 1;
        end ;
      if index = LengthDivStr then
        break  ;
      index := index + 1;
      reset(Table);
    end;
  str(Mr, ViewNum);
  if err then
    MolarMass() ;
  if not err and (Mr > 0) then
    DialogAlert('Молярная масса равна', ViewNum, true) ;
  MolarMass := Mr;
end; 

initialization


begin
 DialogAlert('Молярная масса равна', ViewNum, true) ; 
end;
finalization


begin
end; 
end.
