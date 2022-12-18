var
  intext, out1text,out2text: file of integer;
  a:integer;
begin
  Assign(intext, 'D:\LR_14\in.txt');
  Assign(out1text, 'D:\LR_14\out.txt');
  Assign(out2text, 'D:\LR_14\out2.txt');
  Rewrite(intext);
  for var i:=1 to 20 do
  begin
    a:=random(1,100);
    write(intext,a);
  end;
  
  
  rewrite(out1text);
  rewrite(out2text);
  reset(intext);
  while not eof(intext) do
  begin
    read(intext,a);
    if a mod 2 = 1 then
      write(out1text,a)
    else
      write(out2text,a);
  end;
  
  
  reset(out1text);
  writeln('Нечетные');
  while not eof(out1text) do
  begin
    read(out1text,a);
    write(a,' ');
  end;
  
  
  reset(out2text);
  writeln;
  writeln('Четные');
  while not eof(out2text) do
  begin
    read(out2text,a);
    write(a,' ');
  end;
  
  close(intext);
  close(out1text);
  close(out2text);
end.