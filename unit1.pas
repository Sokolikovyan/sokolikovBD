unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,crt;
procedure ramkatabl();

implementation

procedure ramkatabl();
  var
    i: integer;
  begin
    gotoxy(1, 1);
    writeln('Имя');
    gotoxy(12, 1);
    writeln('Модель');
    gotoxy(24, 1);
    writeln('Компания');
    gotoxy(38, 1);
    writeln('Разработчик');
    gotoxy(56, 1);
    writeln('Стоимость');
    gotoxy(68, 1);
    writeln('Тип');
    for i := 1 to 24 do
    begin
      gotoxy(11, i);
      writeln(#186);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(23, i);
      writeln(#186);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(37, i);
      writeln(#186);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(55, i);
      writeln(#186);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(67, i);
      writeln(#186);
    end;
    for i := 1 to 80 do
    begin
      gotoxy(i, 2);
      Write(#205);
    end;
    gotoxy(11, 2);
    writeln(#206);
    gotoxy(23, 2);
    writeln(#206);
    gotoxy(37, 2);
    writeln(#206);
    gotoxy(55, 2);
    writeln(#206);
    gotoxy(67, 2);
    writeln(#206);
  end;

end.

