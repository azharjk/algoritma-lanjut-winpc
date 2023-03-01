program A_Top3B2;

{$APPTYPE CONSOLE}

uses
  SysUtils, Crt;

Var
  L, T, R, B : Integer;
  i, d : Integer;

begin
  L := 5; T := 3; R := 40; B := 20;
  d := 50;
//
  TextColor(LightMagenta);

  GotoXY(L, T);
  write(Char(218));
  for i := L + 1 to R - 1 do begin
    GotoXY(i, T);

    write(Char(196));
    Delay(d);
  end;

  GotoXY(R, T);
  write(Char(191));
  for i := T + 1 to B - 1 do begin
    GotoXY(R, i);

    write(Char(179));
    Delay(d);
  end;

  GotoXY(R, B);
  write(Char(217));
  for i := R + 1 downto L + 2 do begin
    GotoXY(i - 2, B);

    write(Char(196));
    Delay(d);
  end;

  GotoXY(L, B);
  write(chr(192));
  for i := B downto T + 2 do begin
    GotoXY(L, i - 1);

    write(chr(179));
    Delay(d);
  end;

  ReadKey;
end.
