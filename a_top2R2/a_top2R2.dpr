program a_top2R2;

{$APPTYPE CONSOLE}

uses
  SysUtils, Crt;

Var
  L, T, R, B : Integer;
  i, d : Integer;

begin
  L := 5; T := 3; R := 40; B := 20;
  d := 50;
  i := L;

  repeat
    GotoXY(i, T);

    write(chr(196));
    Delay(d);
    i := i + 1;
  until i >= R - 1;

  write(chr(191));

  i := T + 1;

  repeat
    GotoXY(R - 1, i);

    write(chr(179));
    Delay(d);
    i := i + 1;
  until i >= B;

  GotoXY(R - 1, i);
  write(chr(217));

  i := R;

  repeat
    GotoXY(i - 2, B);

    write(chr(196));
    Delay(d);
    i := i - 1;
  until i <= L + 1;

  GotoXY(i - 1, B);
  write(chr(192));

  i := B;

  repeat
    GotoXY(L, i - 1);

    write(chr(179));
    Delay(d);
    i := i - 1
  until i <= T;

  GotoXY(L, i);
  write(chr(218));

  ReadKey;
end.

