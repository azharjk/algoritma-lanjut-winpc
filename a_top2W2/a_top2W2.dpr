program a_top2W2;

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

  while i < R - 1 Do begin
    GotoXY(i, T);

    write(chr(196));
    Delay(d);
    i := i + 1;
  end;

  write(chr(191));

  i := T + 1;

  while i < B Do begin
    GotoXY(R - 1, i);

    write(chr(179));
    Delay(d);
    i := i + 1;
  end;

  GotoXY(R - 1, i);
  write(chr(217));

  i := R;

  while i > L + 1 Do begin
    GotoXY(i - 2, B);

    write(chr(196));
    Delay(d);
    i := i - 1;
  end;

  GotoXY(i - 1, B);
  write(chr(192));

  i := B;

  while i > T Do begin
    GotoXY(L, i - 1);

    write(chr(179));
    Delay(d);
    i := i - 1
  end;

  GotoXY(L, i);
  write(chr(218));

  ReadKey;
end.
