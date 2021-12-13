var 
 n:integer; 
 a:array[1..100] of integer;

procedure Form;
var i:integer;
Begin
 For i:=1 to n do a[i]:=Random(99);
end;

procedure Viv;
var i:integer;
begin
 For i:=1 to n do write(a[i]:3);
end;

procedure Sort(L, R : Longint);
var i,j,x,t:longint;
begin
 i := L;
 j := R;
 x := a[(i + j)div 2];
 repeat 
  while a[i] < x do inc(i);
  while a[j] > x do dec(j);
  if i <= j then
  begin
   t := a[i];
   a[i] := a[j];
   a[j] := t;
   inc(i);
   dec(j);
  end;
 until i > j;
 if i < R then Sort(i, R);
 if j > L then Sort(L, j);
end;

begin
 readln(n);
 Writeln;
 Form;
 Writeln;
 Viv;
 Writeln;
 Sort(1,n);
 Writeln;
 Viv;
end.