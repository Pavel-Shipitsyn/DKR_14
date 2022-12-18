var
 S:String;
 F_in,F_temp: File of Real;
 temp:Real;
 mas: array[1..15] of Byte;  // Переменная массива.
i, max: Byte;
begin
    Assign(F_in,'C:\Users\pavel\Desktop\ОАиП\Лаб 14\in.txt.');
  Reset(F_in);
  Assign(F_temp,'C:\Users\pavel\Desktop\ОАиП\Лаб 14\temp.txt.');
  ReWrite(F_temp);
for i:=2 to 14 do
begin
 if mas[i]>(mas[i-1] and (mas[i]+1)) then  // Начинаем поиск локального максимума
  if max<mas[i] then max:=mas[i];
end;
  Close(F_in);
  Close(F_temp);
  Erase(F_in); {удаление файла}
  Rename(F_temp,'C:\Users\pavel\Desktop\ОАиП\Лаб 14\in.txt.'); {Переименование файла}
end.