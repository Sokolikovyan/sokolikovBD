program project1;

uses
  crt, Unit1;

const
  MenuPos = 4;
  tabl = 3;

type
  anketa1 = record
    nameoftexn: string;
    modeloftexn: string;
    company: string;
    developer: string;
    cost: string;
    typeof: string;
  end;
type
  anketa2 = record
    fio: string;
    year: string;
    pol: string;
  end;

type
  TObject = object
    procedure ramka;
  end;

  procedure TObject.ramka;
  var
    i: integer;
  begin
    gotoxy(2, 2);
    Write(#201);
    gotoxy(3, 10);
    for i := 3 to 24 do
    begin
      gotoxy(2, i);
      Write(#186);
      gotoxy(78, i);
      Write(#186);
    end;
    gotoxy(3, 2);
    for i := 1 to 75 do
    begin
      Write(#205);
    end;
    gotoxy(78, 2);
    Write(#187);
    gotoxy(3, 25);
    for i := 1 to 75 do
    begin
      Write(#205);
    end;
    gotoxy(2, 25);
    Write(#200);
    gotoxy(78, 25);
    Write(#188);
  end;

var
  v1: TObject;
  tabl2: array[1..5] of anketa2;
  tabl1: array[1..6] of anketa1;
  pos, pos1, menuX, menux2, menuy2, menuY: byte;
  tablic123: array[1..3] of string;
  mainMenu: array [1 .. MenuPos] of string;

  procedure ramkatabl2(); forward;
  procedure Menu(); forward;
  procedure tablo(); forward;
  procedure vivodtabl1(); forward;
  procedure sort(); forward;
  procedure vivodtabl2(); forward;
  procedure ramka2(); forward;
  procedure sort2(); forward;

  procedure sort2();
  var
    i, j, n: integer;
    k: anketa1;
  begin
    n := 2;
    for i := 1 to n - 1 do
      for j := 1 to n - 1 do
        if tabl1[j].nameoftexn > tabl1[j + 1].nameoftexn then
        begin
          k := tabl1[j];
          tabl1[j] := tabl1[j + 1];
          tabl1[j + 1] := k;
        end;
  end;

  procedure sort();
  var
    i, j, n: integer;
    k: anketa2;
  begin
    n := 5;
    for i := 1 to n - 1 do
      for j := 1 to n - 1 do
        if tabl2[j].fio > tabl2[j + 1].fio then
        begin
          k := tabl2[j];
          tabl2[j] := tabl2[j + 1];
          tabl2[j + 1] := k;
        end;
  end;

  procedure ramka2();

  var
    i: integer;
  begin
    //1 окно
    gotoxy(1, 1);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 1);
      Write(#205);
    end;
    gotoxy(80, 1);
    Write(#187);
    for i := 2 to 3 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 4);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 4);
      Write(#205);
    end;
    gotoxy(80, 4);
    Write(#188);
    for i := 2 to 3 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
    //2 окно
    gotoxy(1, 5);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 5);
      Write(#205);
    end;
    gotoxy(80, 5);
    Write(#187);
    for i := 6 to 7 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 8);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 8);
      Write(#205);
    end;
    gotoxy(80, 8);
    Write(#188);
    for i := 6 to 7 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
    //3 окно
    gotoxy(1, 9);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 9);
      Write(#205);
    end;
    gotoxy(80, 9);
    Write(#187);
    for i := 10 to 11 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 12);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 12);
      Write(#205);
    end;
    gotoxy(80, 12);
    Write(#188);
    for i := 10 to 11 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
    //4 окно
    gotoxy(1, 13);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 13);
      Write(#205);
    end;
    gotoxy(80, 13);
    Write(#187);
    for i := 14 to 15 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 16);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 16);
      Write(#205);
    end;
    gotoxy(80, 16);
    Write(#188);
    for i := 14 to 15 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
    //5 окно
    gotoxy(1, 17);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 17);
      Write(#205);
    end;
    gotoxy(80, 17);
    Write(#187);
    for i := 18 to 19 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 20);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 20);
      Write(#205);
    end;
    gotoxy(80, 20);
    Write(#188);
    for i := 18 to 19 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
    //6 окно
    gotoxy(1, 21);
    Write(#201);
    for i := 2 to 79 do
    begin
      gotoxy(i, 21);
      Write(#205);
    end;
    gotoxy(80, 21);
    Write(#187);
    for i := 22 to 23 do
    begin
      gotoxy(1, i);
      Write(#186);
    end;
    gotoxy(1, 24);
    Write(#200);
    for i := 2 to 79 do
    begin
      gotoxy(i, 24);
      Write(#205);
    end;
    gotoxy(80, 24);
    Write(#188);
    for i := 22 to 23 do
    begin
      gotoxy(80, i);
      Write(#186);
    end;
  end;

  procedure ramkatabl2();
  var
    i: integer;
  begin
    gotoxy(30, 1);
    writeln('ФИО');
    gotoxy(55, 1);
    writeln('Год рождения');
    gotoxy(70, 1);
    writeln('Пол');
    gotoxy(38, 1);
    for i := 1 to 80 do
    begin
      gotoxy(i, 2);
      writeln(#205);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(54, i);
      writeln(#186);
    end;
    for i := 1 to 24 do
    begin
      gotoxy(69, i);
      writeln(#186);
    end;
    gotoxy(54, 2);
    writeln(#206);
    gotoxy(69, 2);
    writeln(#206);
  end;

  procedure Menu();
  var
    i: integer;
    a: char;
  begin
    clrscr;
    textcolor(7);
    v1.ramka;
    gotoxy(34, 7);
    writeln('MENU');
    pos := 1;
    menuX := 28;
    menuY := 8;
    mainMenu[1] := 'Ввести данные';
    mainMenu[2] := 'Изменить данные';
    mainMenu[3] := 'Сохранить';
    mainMenu[4] := 'Выйти';
    repeat
      for i := 1 to MenuPos do
      begin
        textColor(7);
        gotoxy(menuX, menuY + i);
        if i = pos then
        begin
          textColor(3);
          Write(mainMenu[i]);
        end
        else
          Write(mainMenu[i]);
      end;
      a := readkey;
      if a = #0 then
      begin
        a := readkey;
        if a = #80 then
          pos := pos + 1;
        if pos = MenuPos + 1 then
          pos := 1; //вниз
        if a = #72 then
          pos := pos - 1;
        if pos = 0 then
          pos := MenuPos;     //вверх
      end;
      if (pos = 1) and (a = #13) then
        tablo();
      if (pos = 4) and (a = #13) then
        halt;
    until a = #27;
    clrscr;
  end;

  procedure vivodtabl2();
  var
    a: char;
    pos3, pos4, n, i, Count, g: integer;
    mn1, mn2: set of char;
    p1, p2, p3: string;
  begin
    Count := 0;
    p1 := '';
    p2 := '';
    p3 := '';
    mn1 := ['a'..'z', ' ', #8];
    mn2 := ['0'..'9', #8];
    pos3 := 0;
    pos4 := 0;
    clrscr;
    ramka2();
    cursoron;
    gotoxy(3, 3);
    Write('Введите ФИО');
    gotoxy(3, 7);
    Write('Введите год рождения');
    gotoxy(3, 11);
    Write('Введите пол (m/w)');
    pos4 := 0;
    repeat
      a := readkey;
      if (a = #9) then
      begin
        pos4 := 0;
        pos3 := pos3 + 1;
      end;
      case pos3 of
        1:
        begin
          gotoxy(40 + pos4, 3);
          if a in mn1 then
          begin
            if (pos4 <= 40) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p1 := p1 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 40 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p1, length(p1), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
        2:
        begin
          gotoxy(pos4 + 40, 7);
          if a in mn2 then
          begin
            if (pos4 <= 4) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn2 then
                begin
                  Write(a);
                  p2 := p2 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 4 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p2, length(p2), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
        3:
        begin
          pos4 := 0;
          gotoxy(pos4 + 40, 11);
          if a in mn1 then
          begin
            if (pos4 <= 1) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p3 := p3 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if (pos4 = 1) or (a = #9) then
              begin
                Count := Count + 1;
                tabl2[Count].fio := p1;
                tabl2[Count].year := p2;
                tabl2[Count].pol := p3;
                p1 := '';
                p2 := '';
                p3 := '';
                clrscr;
                ramka2();
                cursoron;
                gotoxy(3, 3);
                Write('Введите ФИО');
                gotoxy(3, 7);
                Write('Введите год рождения');
                gotoxy(3, 11);
                Write('Введите пол (m/w)');
                pos4 := 0;
                pos3 := 1;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p3, length(p3), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
      end;
      if (a = #27) then
        halt;
    until a = #13;
    clrscr;
    G := 2;
    for i := 1 to Count do
    begin
      g := g + 1;
      ramkatabl2();
      gotoxy(1, g);
      sort();
      writeln(tabl2[i].fio);
      gotoxy(55, g);
      writeln(tabl2[i].year);
      gotoxy(75, g);
      writeln(tabl2[i].pol);
    end;
    readkey;
    clrscr;
  end;

  procedure vivodtabl1();

  var
    a: char;
    pos3, pos4, n, i, Count, g: integer;
    mn1, mn2, mn3: set of char;
    p1, p2, p3, p4, p5, p6: string;
  begin
    Count := 0;
    p1 := '';
    p2 := '';
    p3 := '';
    p4 := '';
    p5 := '';
    p6 := '';
    mn1 := ['a'..'z', #8];
    mn2 := ['a'..'z', '0'..'9', #8];
    mn3 := ['0'..'9', #8];
    pos3 := 0;
    pos4 := 0;
    clrscr;
    ramka2();
    cursoron;
    gotoxy(3, 3);
    Write('Введите имя техники');
    gotoxy(3, 7);
    Write('Введите модель техники');
    gotoxy(3, 11);
    Write('Введите компанию производителя');
    gotoxy(3, 15);
    Write('Введите разработчика');
    gotoxy(3, 19);
    Write('Введите стоимость');
    gotoxy(3, 23);
    Write('Введите тип');
    repeat
      a := readkey;
      if (a = #9) then
      begin
        pos4 := 0;
        pos3 := pos3 + 1;
      end;
      case pos3 of
        1:
        begin
          gotoxy(pos4 + 50, 3);
          if a in mn1 then
          begin
            if (pos4 <= 9) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p1 := p1 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 9 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p1, length(p1), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
        2:
        begin
          gotoxy(50 + pos4, 7);
          if a in mn2 then
          begin
            if (pos4 <= 10) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p2 := p2 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 10 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p2, length(p2), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
        3:
        begin
          gotoxy(pos4 + 50, 11);
          if a in mn1 then
          begin
            if (pos4 <= 11) and (a <> #9) then
            begin

              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p3 := p3 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 11 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p3, length(p3), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);

              end;
            end;
          end
          else
            n := n + 1;
        end;
        4:
        begin

          gotoxy(pos4 + 50, 15);
          if a in mn1 then
          begin

            if (pos4 <= 15) and (a <> #9) then
            begin
              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p4 := p4 + a;
                  pos4 := pos4 + 1;

                end;
              end;
              if pos4 = 15 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p4, length(p4), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
        5:
        begin

          gotoxy(pos4 + 50, 19);
          if a in mn3 then
          begin

            if (pos4 <= 9) and (a <> #9) then
            begin

              if a >= #32 then
              begin
                if a in mn3 then
                begin
                  Write(a);
                  p5 := p5 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if pos4 = 9 then
              begin
                pos3 := pos3 + 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p5, length(p5), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
            gotoxy(wherex, wherey);
            Write('руб.');
          end
          else
            n := n + 1;
        end;
        6:
        begin

          gotoxy(pos4 + 50, 23);
          if a in mn1 then
          begin

            if (pos4 <= 10) and (a <> #9) then
            begin

              if a >= #32 then
              begin
                if a in mn1 then
                begin
                  Write(a);
                  p6 := p6 + a;
                  pos4 := pos4 + 1;
                end;
              end;
              if (pos4 = 10) or (a = #9) then
              begin
                Count := Count + 1;
                tabl1[Count].nameoftexn := p1;
                tabl1[Count].modeloftexn := p2;
                tabl1[Count].company := p3;
                tabl1[Count].developer := p4;
                tabl1[Count].cost := p5;
                tabl1[Count].typeof := p6;
                p1 := '';
                p2 := '';
                p3 := '';
                p4 := '';
                p5 := '';
                P6 := '';
                clrscr;
                ramka2();
                cursoron;
                gotoxy(3, 3);
                Write('Введите имя техники');
                gotoxy(3, 7);
                Write('Введите модель техники');
                gotoxy(3, 11);
                Write('Введите компанию производителя');
                gotoxy(3, 15);
                Write('Введите разработчика');
                gotoxy(3, 19);
                Write('Введите стоимость');
                gotoxy(3, 23);
                Write('Введите тип');
                pos3 := 1;
                pos4 := 0;
              end;
              if a = #8 then
              begin
                pos4 := pos4 - 1;
                Delete(p6, length(p6), 1);
                gotoxy(wherex - 1, wherey);
                Write(' ');
                gotoxy(wherex - 1, wherey);
              end;
            end;
          end
          else
            n := n + 1;
        end;
      end;
      if (a = #27) then
        halt;
    until a = #13;
    clrscr;
    G := 2;
    for i := 1 to Count do
    begin
      g := g + 1;
      ramkatabl();
      gotoxy(1, g);
      sort2();
      writeln(tabl1[i].nameoftexn);
      gotoxy(12, g);
      writeln(tabl1[i].modeloftexn);
      gotoxy(24, g);
      writeln(tabl1[i].company);
      gotoxy(38, g);
      writeln(tabl1[i].developer);
      gotoxy(56, g);
      writeln(tabl1[i].cost, ' р');
      gotoxy(68, g);
      writeln(tabl1[i].typeof);
    end;
    readkey;
    clrscr;
  end;

  procedure tablo();
  var
    i: integer;
    a: char;
  begin
    clrscr;
    pos1 := 1;
    menux2 := 28;
    menuy2 := 8;
    tablic123[1] := 'ТАБЛИЦА 1(ТЕХНИКА)';
    tablic123[2] := 'ТАБЛИЦА 2(РАЗРАБОТЧИКИ)';
    tablic123[3] := 'ТАБЛИЦА 3(ПРЕДПРИЯТИЕ)';
    repeat
      gotoxy(4, 24);
      textcolor(red);
      writeln('ВЫХОД-ESC');
      textcolor(7);
      v1.ramka;
      gotoxy(27, 7);
      Write('ВЫБЕРИТЕ ТАБЛИЦУ');
      for i := 1 to tabl do
      begin
        textColor(7);               //цвет меню выбора таблицы
        gotoxy(menuX2, menuY2 + i);
        if i = pos1 then
        begin
          textColor(3);//выбранный пункт
          Write(tablic123[i]);
        end
        else
          Write(tablic123[i]);
      end;
      a := readkey;
      if a = #0 then
      begin
        a := readkey;
        if a = #80 then
          pos1 := pos1 + 1;
        if pos1 = tabl + 1 then
          pos1 := 1; //передвижение вниз
        if a = #72 then
          pos1 := pos1 - 1;
        if pos1 = 0 then
          pos1 := tabl;//передвижение вверх
      end;
      if (pos1 = 1) and (a = #13) then
        vivodtabl1();
      if (pos1 = 2) and (a = #13) then
        vivodtabl2();
      if (a = #27) then
        halt;
      if (a = #8) then
        menu;
    until a = #27;
  end;

begin
  cursoroff;
  textbackground(1);
  Menu();
  readkey;
end.
