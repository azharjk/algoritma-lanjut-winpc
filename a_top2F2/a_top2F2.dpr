program a_top2F2;

{$APPTYPE CONSOLE}

uses
  SysUtils, Crt;

Var
  L, T, R, B : Integer;
  i, d : Integer;

begin
  L := 5; T := 3; R := 40; B := 20;
  d := 50;

  for i := L to R - 2 do begin

    GotoXY(i, T);

    write(chr(196));
    Delay(d);
  end;

  write(chr(191));


  for i := T + 1 to B - 1 do begin
    GotoXY(R - 1, i);

    write(chr(179));
    Delay(d);
  end;

  GotoXY(R - 1, i);
  write(chr(217));


  for i := R downto L + 2 do begin
    GotoXY(i - 2, B);

    write(chr(196));
    Delay(d);
  end;

  GotoXY(i - 1, B);
  write(chr(192));


  for i := B downto T + 1 do begin
    GotoXY(L, i - 1);

    write(chr(179));
    Delay(d);
  end;

  GotoXY(L, i);
  write(chr(218));

  ReadKey;
end.

