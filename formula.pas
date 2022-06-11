uses
  crt, aDialog, Graph;

function Substance() : String;

var
  sub, ViewStr, ViewElement: String;
  Compound, stop: Boolean;
  i, index, check, err, LengthDivStr, Space: Integer;
  DividedStr: array [1..20] of String;
  Table: text;


begin
  repeat 
    sub := DialogGetInput('Составление структурных формул V0.1. Введите вещество ', 'Номенклатурное название или формулу', '') + ' ';
    for i := 1 to Length(sub) do 
      if sub[i] = ' ' then
        Space := Space + 1 ;
    if Space > 1 then
      sub := copy(sub, 1, Length(sub) - Space + 1)  
    else 
      sub := copy(sub, 1, Length(sub));
    i := 1;
    while i < Length(sub) do 
      begin
        index := index + 1;
        if (sub[i + 1] >= 97) and (sub[i + 1] <= 122) then
          begin
            for check := 1 to index do 
              if Dividedstr[check] = copy(sub, i, 2) then
                err := err + 1 ;
            if err = 0 then
              begin
                Dividedstr[index] := copy(sub, i, 2);
                i := i + 2;
                LengthDivStr := LengthDivStr + 1;
              end 
            else 
              begin
                i := i + 2;
                index := index - 1;
              end;
            err := 0 
          end 
        else if (sub[i] = '(') or (sub[i] = ')') then
          begin
            i := i + 1;
            index := index - 1;
          end 
        else if ((sub[i] >= 48) and (sub[i] <= 57)) and ((sub[i + 1] >= 48) and (sub[i + 1] <= 57)) then
          i := i + 2  
        else if (sub[i] >= 48) and (sub[i] <= 57) then
          begin
            i := i + 1;
            index := index - 1;
          end 
        else if ((sub[i] >= 65) and (sub[i] <= 90)) then
          begin
            for check := 1 to index do 
              if Dividedstr[check] = sub[i] then
                err := err + 1 ;
            if err = 0 then
              begin
                Dividedstr[index] := sub[i];
                i := i + 1;
                LengthDivStr := LengthDivStr + 1;
              end 
            else 
              begin
                i := i + 1;
                index := index - 1;
              end;
            err := 0 
          end ;
      end;
    check := 0;
    Assign(Table, '/sdcard/таблица.txt');
    reset(Table);
    for index := 1 to LengthDivStr do 
      begin
        while not eof(Table) and not stop do 
          begin
            readln(Table, ViewStr);
            if ViewStr[2] = ' ' then
              ViewElement := copy(ViewStr, 1, 1)  
            else 
              ViewElement := copy(ViewStr, 1, 2);
            if Dividedstr[index] = ViewElement then
              begin
                check := check + 1;
                stop := true;
              end ;
          end;
        stop := false;
        reset(Table);
      end;
    if (check = LengthDivStr) and (check > 0) and (LengthDivStr > 0) then
      Compound := true  
    else 
      Compound := false;
    if not Compound then
      begin
        if sub > '' then
          DialogAlert('Ошибка!', sub + ' не вещество, попробуйте еще раз', true);  
        if sub = '' then
          DialogAlert('Ошибка!', 'Вы не ввели вещество, попробуйте еще раз', true);
        delay(1000);
        for i := 1 to 20 do 
          DividedStr[i] := '';
        Space := 0;
        index := 0;
        check := 0;
        LengthDivStr := 0;
      end ;
  until Compound;
  Substance := copy(sub, 1, Length(sub));
end; 
function ClassOf(sub: String) : Integer;

var
  i, index, LengthDivStr, num: integer;
  DividedStr: array [1..20] of String;
  Radical, RadicalView: String;
  RadicalTable, CationTable: text;
  acid, oxy, cation, anion: Boolean;


begin
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
      LengthDivStr := LengthDivStr + 1;
    end;
  sub := Copy(sub, 1, Length(sub) - 1);
  if ((DividedStr[2] = 'O') or (DividedStr[3] = 'O')) and not ((Dividedstr[2] [1] >= 65) and (Dividedstr[2] [1] <= 90)) and not (DividedStr[2] [1] = '(') then
    write('оксид')
  else if DividedStr[1] = 'H' then
    begin
      if (DividedStr[2] [1] >= 48) and (DividedStr[2] [1] <= 57) then
        Radical := Copy(sub, 3, Length(sub))  
      else 
        Radical := Copy(sub, 2, Length(sub));
      Assign(RadicalTable, '/sdcard/Таблица кислотных остатков.txt');
      Reset(RadicalTable);
      while not eof(RadicalTable) do 
        begin
          ReadLn(RadicalTable, RadicalView);
          RadicalView := copy(RadicalView, 1, Length(RadicalView) - 3);
          if Radical = RadicalView then
            begin
              acid := true;
              break ;
            end ;
        end;
      if acid then
        for i := 1 to Length(RadicalView) do 
          if RadicalView[i] = 'O' then
            oxy := true  ;
      if acid and oxy then
        write('Кислородосодержащая кислота');  
      if acid and not oxy then
        write('Бескислородная кислота');
    end 
  else 
    for i := 1 to Length(sub) - 1 do 
      if Copy(sub, i, 2) = 'OH' then
        write('основание')
  else if DividedStr[1] = 'N' then
    for i := 1 to Length(sub) - 1 do 
      if Copy(sub, i, 2) = 'NH4' then
        write('Соль аммония')
  else
    begin
      Assign(CationTable,'/sdcard/Таблица Металлов.txt');
      reset(CationTable);
      while not eof(CationTable) do
        begin
          ReadLn(CationTable, RadicalView);
          RadicalView := copy(RadicalView, 1, Length(RadicalView) - 3);
          if Radical = RadicalView then
            begin
              acid := true;
              break ;
            end ;
        end;
    end
  //кислые и основные соли
  
  //органические вещества
 { else
    begin
      
    end}
end; 

begin
  clrscr();
  ClassOf(Substance());
  readln;
end.
