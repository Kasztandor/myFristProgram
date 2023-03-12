@echo off
title Pierwszy program Michala Swobody

echo !UWAGA! nacisniecie ENTER bez napisania czego kolwiek = ERROR !UWAGA!
echo.
echo Aby wybrac obcje w moim programie wpisz ja a puzniej nacisnij ENTER.
echo Aby kontynuowac nacisnij dowolny klawisz.

pause >nul

:menu1
cls
echo Wybierz opcje:
echo.
echo 1 - Menu.
echo 2 - Zmiana koloru.
echo 3 - Wpisz komede.
echo 4 - Zamknij program.
echo.

set/p wybor=

if %wybor%== 1 goto menu1
if %wybor%== 2 goto kolor
if %wybor%== 3 goto komenda
if %wybor%== 4 goto koniec1

if not %wybor%== 1 goto menu2
if not %wybor%== 2 goto menu2
if not %wybor%== 3 goto menu2
if not %wybor%== 4 goto menu2

pause >nul

goto menu2

:menu2
cls
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo BLAD Wybrales niewlasciwa opcje.
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo.
echo Wybierz opcje:
echo.
echo 1 - Menu.
echo 2 - Zmiana koloru.
echo 3 - Wpisz komede.
echo 4 - Zamknij program.
echo.

set/p wybor=
if %wybor%== 1 goto menu1
if %wybor%== 2 goto kolor
if %wybor%== 3 goto komenda
if %wybor%== 4 goto koniec1

if not %wybor%== 1 goto menu2
if not %wybor%== 2 goto menu2
if not %wybor%== 3 goto menu2
if not %wybor%== 4 goto menu2

pause >nul

goto menu2

:kolor
cls
echo Wybierz kolor.
echo.
echo 1 - ciemno-niebieski
echo 2 - ciemno-zielony
echo 3 - niebieski
echo 4 - cziemno-czerwony
echo 5 - fioletowy
echo 6 - zulty
echo 8 - bialy
echo a - jasno-zielony
echo b - jasno-niebieski
echo c - jasno-czerwony
echo.
echo xxxxxxxxxxxxxxxx
echo x - powrot do menu
echo xxxxxxxxxxxxxxxx
echo.

set/p color=

if %color%==1 color 1
if %color%==2 color 2
if %color%==3 color 3
if %color%==4 color 4
if %color%==5 color 5
if %color%==6 color 6
if %color%==7 color 7
if %color%==8 color 8
if %color%==a color a
if %color%==b color b
if %color%==c color c
if %color%==A color a
if %color%==B color b
if %color%==C color c
if %color%==x goto menu1
if %color%==X goto menu1

if not %color%==1 goto menu2
if not %color%==2 goto menu2
if not %color%==3 goto menu2
if not %color%==4 goto menu2
if not %color%==5 goto menu2
if not %color%==6 goto menu2
if not %color%==7 goto menu2
if not %color%==8 goto menu2
if not %color%==a goto menu2
if not %color%==b goto menu2
if not %color%==c goto menu2
if not %color%==x goto menu2
if not %color%==A goto menu2
if not %color%==B goto menu2
if not %color%==C goto menu2
if not %color%==X goto menu2

:komenda
cls
echo Tutaj wpisz komede.
echo.
echo xxxxxxxxxxxxxxxx
echo x - powrot do menu
echo xxxxxxxxxxxxxxxx
echo.

set/p komeda=

if %komeda%==x goto menu1
if not %komeda%==x %komeda%
goto menu1

:koniec1
cls
echo Czy napewno chcesz wyjsc z programu (tak-t nie-n)
echo.
set/p end=

if %end%==t goto end
if %end%==T goto end
if %end%==n goto menu1
if %end%==N goto menu1

if not %end%==t goto koniec2
if not %end%==T goto koniec2
if not %end%==n goto koniec2
if not %end%==N goto koniec2

:koniec2
cls
echo xxxxxxxxxxxxxxxxxxxxxxxxxxx
echo Nieprawidlowe zformulowanie
echo xxxxxxxxxxxxxxxxxxxxxxxxxxx
echo.
echo Czy napewno chcesz wyjsc z programu (tak-t nie-n)
echo.
set/p end=

if %end%==t goto end
if %end%==T goto end
if %end%==n goto menu1
if %end%==N goto menu1

if not %end%==t goto koniec2
if not %end%==T goto koniec2
if not %end%==n goto koniec2
if not %end%==N goto koniec2

:end

cls
echo Aplikacja wylaczona.
echo Nacisnij odwolny klawisz aby kontynuowac.
pause >nul