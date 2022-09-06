var a,i,x,c,y:integer;
Begin
c:=0;
y:=0;
readln(a);
if (a<0) or (a>9) then
 Begin
 while (a<0) or (a>9) do Begin writeln('wrong. try new'); readln(a); end;
 end;
for i:=10 to 99 do
 Begin
 x:=i*a;
 c:=0;
 while x<>0 do
 Begin
 c:=c+x mod 10;
 x:=x div 10;
 end;
 if (i mod 10) + (i div 10) = c then y:=y+1;
 end;
writeln(y);
end.
