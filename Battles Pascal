var
  n:byte;
procedure P(m,a,b,c:byte);
  begin
    if m=1 then
      write (a,'->',b,' ')
    else
      begin
        P(m-1,a,c,b);
        P(1,a,b,c);
        P(m-1,c,b,a);
      end;
  end;
begin
  writeln('Введiть кiлькiсть дискiв');
  readln(n);
  P(n,0,1,2);
end.
