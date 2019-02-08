@echo off
rem Made by Nanotek
rem 09-09-2015
rem Credit to Kolto101 and Kolt Koding
rem V 4.23
set version=4.24
rem Tested on: Windows 8.1 64bit, Windows 7 64bit, Windows 10 64bit
setlocal EnableDelayedExpansion
if not exist input.bat call :inputmake
if not exist score.bat call :scoremake
if not exist scoreb.bat call :scoremakeb
if exist score.bat call score.bat
if exist scoreb.bat call scoreb.bat
if not exist input.bat set errorcode=1&goto error
if exist random.bat del random.bat
if not exist data.bat (
	set border=°
	set brick=Û
	set sbrick=²
	set dbrick=±
	set b=°
	set color=f 
	color f
	echo set border=°>>data.bat
	echo set brick=Û>>data.bat
	echo set sbrick=²>>data.bat
	echo set dbrick=±>>data.bat
	echo color F >>data.bat
	echo set color=f >>data.bat
	if not exist data.bat set errorcode=3&goto error
	set b=!border!
	set c=!brick!
	set d=!dbrick!
) ELSE (
	call data.bat
	set b=!border!
	set c=!brick!
	set d=!dbrick!
)
mode 40,20
Title Tetris !version!
echo By Nanotek
echo V. !version!
echo           !c!!c!!c! !c!!c! !c!!c!!c! !c!!c!  !c! !c!!c!
echo            !c!  !c!   !c!  !c! !c!   !c!
echo            !c!  !c!!c!  !c!  !c!!c!  !c! !c!!c!
echo            !c!  !c!   !c!  !c! !c! !c!  !c!
echo            !c!  !c!!c!  !c!  !c! !c! !c! !c!!c!
echo.
echo.
echo            !c!!c!    !c!   !c!   !c! !c!!c!
echo           !c!     !c! !c!  !c!!c! !c!!c! !c!
echo           !c! !c!!c! !c!!c!!c!!c!!c! !c! !c! !c! !c!!c!
echo           !c!  !c! !c!   !c! !c!   !c! !c!
echo            !c!!c!  !c!   !c! !c!   !c! !c!!c!
echo.
echo.
echo        Press any key to continue
echo.
echo.
pause >nul
Title 
mode 19,23
:main
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%     %b%
echo %b% Welcome  %b%     %b%
echo %b%          %b%     %b%
echo %b%    To    %b%     %b%
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  TETRIS  %b%
echo %b%          %b%
echo %b% 1 Start  %b%
echo %b%          %b%
echo %b% 2 Config %b%
echo %b%          %b%
echo %b% 3 Scores %b%
echo %b%          %b%
echo %b% 4 How to %b%
echo %b%   Play   %b%
echo %b%          %b%
echo %b% 5 Exit   %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:12345 /n
if ERRORLEVEL 5 (
exit
)
if ERRORLEVEL 4 (
goto howtoplay
)
if ERRORLEVEL 3 (
goto scores
)
if ERRORLEVEL 2 (
goto config
)
if ERRORLEVEL 1 (
goto startsdfghj
)

:scores
mode 40,15
if not exist scoreb.bat call :scoremakeb
if exist scoreb.bat call scoreb.bat
set sname1b=!sname1!
set sname1scb=!sname1sc!
set sname2b=!sname2!
set sname2scb=!sname2sc!
set sname3b=!sname3!
set sname3scb=!sname3sc!
set sname4b=!sname4!
set sname4scb=!sname4sc!
set sname5b=!sname5!
set sname5scb=!sname5sc!
set sname6b=!sname6!
set sname6scb=!sname6sc!
set sname7b=!sname7!
set sname7scb=!sname7sc!
set sname8b=!sname8!
set sname8scb=!sname8sc!
set sname9b=!sname9!
set sname9scb=!sname9sc!
set sname10b=!sname10!
set sname10scb=!sname10sc!
if not exist scoreb.bat call :scoremake
if exist score.bat call score.bat
cls
echo.
echo  Higscores
echo  Type a             Type b
echo.
echo 1.  %sname1%  %sname1sc%  1.  %sname1b%  %sname1scb%
echo 2.  %sname2%  %sname2sc%  2.  %sname2b%  %sname2scb%
echo 3.  %sname3%  %sname3sc%  3.  %sname3b%  %sname3scb%
echo 4.  %sname4%  %sname4sc%  4.  %sname4b%  %sname4scb%
echo 5.  %sname5%  %sname5sc%  5.  %sname5b%  %sname5scb%
echo 6.  %sname6%  %sname6sc%  6.  %sname6b%  %sname6scb%
echo 7.  %sname7%  %sname7sc%  7.  %sname7b%  %sname7scb%
echo 8.  %sname8%  %sname8sc%  8.  %sname8b%  %sname8scb%
echo 9.  %sname9%  %sname9sc%  9.  %sname9b%  %sname9scb%
echo 10. %sname10%  %sname10sc% 10. %sname10b%  %sname10scb%
pause >nul
mode 19,23
goto main


:config
set assa=nul
mode 19,23
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%     %b%
echo %b%Configure %b%     %b%
echo %b%          %b%     %b%
echo %b%  TETRIS  %b%     %b%
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%1 Block   %brick%  %b%
echo %b%2 S block %sbrick%  %b%
echo %b%3 Border  %border%  %b%
echo %b%4 D brick %dbrick%  %b%
echo %b%5 Color   %color% %b%
echo %b%          %b%%b%%b%%b%
echo %b%          %b%
echo %b%          %b%
echo %b% You cant %b%
echo %b% use the  %b%
echo %b% same     %b%
echo %b% character%b%
echo %b% to times %b%
echo %b% b Back   %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:12345b /n
if ERRORLEVEL 6 (
	goto main
)
if ERRORLEVEL 5 (
	mode 80,50
	color /?
	echo Type -b to go back
	set /p assa=Enter the color you want:
	if "!assa!" == "-b" goto config
	if "!assa:~1!" == "" (
		color !assa!
		set color=!assa! 
		echo color !assa! >>data.bat
		goto config
	)
	if "!assa:~2!" == "" (
		color !assa!
		set color=!assa!
		echo color !assa!>>data.bat
		goto config
	)
	goto config
)
if ERRORLEVEL 4 (
	call :excar
	if "!assa!" == "!border!" goto config
	if "!assa!" == "!sbrick!" goto config
	if "!assa!" == "!brick!" goto config
	if "!assa:~1!" == "" (
		echo set dbrick=!assa!>>data.bat
		set dbrick=!assa!
	)
	goto config
)
if ERRORLEVEL 3 (
	call :excar
	if "!assa!" == "!dbrick!" goto config
	if "!assa!" == "!sbrick!" goto config
	if "!assa!" == "!brick!" goto config
	if "!assa:~1!" == "" (
		echo set border=!assa!>>data.bat
		set border=!assa!
		set b=!border!
	)
	goto config
)
if ERRORLEVEL 2 (
	call :excar
	if "!assa!" == "!dbrick!" goto config
	if "!assa!" == "!border!" goto config
	if "!assa!" == "!brick!" goto config
	if "!assa:~1!" == "" (
		echo set sbrick=!assa!>>data.bat
		set sbrick=!assa!
	)
	goto config
)
if ERRORLEVEL 1 (
	call :excar
	if "!assa!" == "!dbrick!" goto config
	if "!assa!" == "!border!" goto config
	if "!assa!" == "!sbrick!" goto config
	if "!assa:~1!" == "" (
		echo set brick=!assa!>>data.bat
		set brick=!assa!
	)
	goto config
)

:startsdfghj
set islinestoget=0
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  Choose  %b%     %b%
echo %b%          %b%     %b%
echo %b%    A     %b%     %b%
echo %b%          %b%     %b%
echo %b%   Type   %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%
echo %b% 1 Type a %b%
echo %b% 2 Type b %b%
echo %b% b Back   %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:12b /n
if ERRORLEVEL 3 (
goto main
)
if ERRORLEVEL 2 (
goto typeb
)
if ERRORLEVEL 1 (
goto typea
)
:typea
set linestoget= 
set islinetoget= 
set level=0
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  Choose  %b%     %b%
echo %b%          %b%     %b%
echo %b%    A     %b%     %b%
echo %b%          %b%     %b%
echo %b%  Level   %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%
echo %b% 0 Level  %b%
echo %b% 1 Level  %b%
echo %b% 2 Level  %b%
echo %b% 3 Level  %b%
echo %b% 4 Level  %b%
echo %b% 5 Level  %b%
echo %b% 6 Level  %b%
echo %b% 7 Level  %b%
echo %b% 8 Level  %b%
echo %b% 9 Level  %b%
echo %b% b Back   %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:123456789b0 /n
if ERRORLEVEL 11 (
set level=0
goto init
)
if ERRORLEVEL 10 (
goto startsdfghj
)
if ERRORLEVEL 9 (
set level=9
goto init
)
if ERRORLEVEL 8 (
set level=8
goto init
)
if ERRORLEVEL 7 (
set level=7
goto init
)
if ERRORLEVEL 6 (
set level=6
goto init
)
if ERRORLEVEL 5 (
set level=5
goto init
)
if ERRORLEVEL 4 (
set level=4
goto init
)
if ERRORLEVEL 3 (
set level=3
goto init
)
if ERRORLEVEL 2 (
set level=2
goto init
)
if ERRORLEVEL 1 (
set level=1
goto init
)
:typeb
set level=0
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  Choose  %b%     %b%
echo %b%          %b%     %b%
echo %b%    A     %b%     %b%
echo %b%          %b%     %b%
echo %b%  Level   %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%
echo %b% 0 Level  %b%
echo %b% 1 Level  %b%
echo %b% 2 Level  %b%
echo %b% 3 Level  %b%
echo %b% 4 Level  %b%
echo %b% 5 Level  %b%
echo %b% 6 Level  %b%
echo %b% 7 Level  %b%
echo %b% 8 Level  %b%
echo %b% 9 Level  %b%
echo %b% b Back   %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:123456789b0 /n
if ERRORLEVEL 11 (
set level=0
goto typebs
)
if ERRORLEVEL 10 (
goto startsdfghj
)
if ERRORLEVEL 9 (
set level=9
goto typebs
)
if ERRORLEVEL 8 (
set level=8
goto typebs
)
if ERRORLEVEL 7 (
set level=7
goto typebs
)
if ERRORLEVEL 6 (
set level=6
goto typebs
)
if ERRORLEVEL 5 (
set level=5
goto typebs
)
if ERRORLEVEL 4 (
set level=4
goto typebs
)
if ERRORLEVEL 3 (
set level=3
goto typebs
)
if ERRORLEVEL 2 (
set level=2
goto typebs
)
if ERRORLEVEL 1 (
set level=1
goto typebs
)
:typebs
set height=0
set heighta=0
set lowcou=0
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  Choose  %b%     %b%
echo %b%          %b%     %b%
echo %b%    A     %b%     %b%
echo %b%          %b%     %b%
echo %b%  Height  %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%
echo %b% 0 Height %b%
echo %b% 1 Height %b%
echo %b% 2 Height %b%
echo %b% 3 Height %b%
echo %b% 4 Height %b%
echo %b% 5 Height %b%
echo %b% b Back   %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
choice /c:12345b0 /n
if ERRORLEVEL 7 (
set linestoget=25
set islinestoget=Lines
goto initsas
)
if ERRORLEVEL 6 (
goto typeb
)
if ERRORLEVEL 5 (
set heighta=131
set lowcou=50
goto inits
)
if ERRORLEVEL 4 (
set heighta=155
set lowcou=40
goto inits
)
if ERRORLEVEL 3 (
set heighta=179
set lowcou=30
goto inits
)
if ERRORLEVEL 2 (
set heighta=203
set lowcou=20
goto inits
)
if ERRORLEVEL 1 (
set heighta=227
set lowcou=10
goto inits
)
:inits
set type=b
set non= 
set totalvariables=252
for %%b in (b a1 a12 a13 a24 a36 a48 a60 a72 a84 a96 a108 a120 a132 a144 a156 a168 a180 a192 a204 a216 a228 a240 a25 a37 a49 a61 a73 a85 a97 a109 a121 a133 a145 a157 a169 a181 a193 a205 a217 a229 a24 a36 a241 a242 a243 a244 a245 a246 a247 a248 a249 a250 a251 a252 ) do set %%b=%border%
for /l %%a in (1,1,%totalvariables%) do set a%%a=%non%
set ranbliall=0
:initsagain
for /l %%r in (239,-1,!heighta!) do (
	set ranset=nul
	set ranset=!random:~4!
	if "!ranset!" == " " set ornot=nul
	if "!ranset!" == "0" set ornot=lige
	if "!ranset!" == "1" set ornot=ulige
	if "!ranset!" == "2" set ornot=ulige
	if "!ranset!" == "3" set ornot=ulige
	if "!ranset!" == "4" set ornot=lige
	if "!ranset!" == "5" set ornot=ulige
	if "!ranset!" == "6" set ornot=ulige
	if "!ranset!" == "7" set ornot=ulige
	if "!ranset!" == "8" set ornot=ulige
	if "!ranset!" == "9" set ornot=ulige
	if "!ornot!" == "lige" set a%%r=!sbrick!
	if "!ornot!" == "lige" set /a ranbliall=!ranbliall!+1
)
if !ranbliall! LSS !lowcou! goto initsagain
set linestoget=25
set islinestoget=Lines
goto skipinitb
:init
set type=a
:initsas
set non= 
set totalvariables=252
for /l %%a in (1,1,%totalvariables%) do set a%%a=%non%
for %%b in (b a1 a12 a13 a24 a36 a48 a60 a72 a84 a96 a108 a120 a132 a144 a156 a168 a180 a192 a204 a216 a228 a240 a25 a37 a49 a61 a73 a85 a97 a109 a121 a133 a145 a157 a169 a181 a193 a205 a217 a229 a24 a36 a241 a242 a243 a244 a245 a246 a247 a248 a249 a250 a251 a252 ) do set %%b=%border%
:skipinitb
if exist input.bat start "" "input.bat"
mode 19,23
set curtimes=5
:curtimestop
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b% Control  %b%     %b%
echo %b%          %b%     %b%
echo %b%  With    %b%     %b%
echo %b%          %b%     %b%
echo %b%  WASD    %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%
echo %b% W: turn  %b%
echo %b% A: Left  %b%
echo %b% D: Right %b%
echo %b% S: Fast  %b%
echo %b%    down  %b%
echo %b% P: Pause %b%
echo %b%          %b%
echo %b%          %b%
echo %b%    %curtimes%     %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
timeout /t 1 >nul
set /a curtimes=!curtimes!-1
if "!curtimes!" == "0" goto skiptimew
goto curtimestop
:skiptimew
set bp1= 
set bp2= 
set bp3= 
set bp4= 
set bp5= 
set bp6= 
set bp7= 
set bp8= 
set x=18
set a18=%brick%
set x1=0
set x2=0
set x3=0
set blockid=nul
set lineid1=0
set lineid2=0
set lineid3=0
set lineid4=0
set lineid5=0
set lineid6=0
set lineid7=0
set lineid8=0
set lineid9=0
set lineid10=0
set lineid11=0
set lineid12=0
set lineid13=0
set lineid14=0
set lineid15=0
set lineid16=0
set lineid17=0
set lineid18=0
set islineid1=0
set islineid2=0
set islineid3=0
set islineid4=0
set islineid5=0
set islineid6=0
set islineid7=0
set islineid8=0
set islineid9=0
set islineid10=0
set islineid11=0
set islineid12=0
set islineid13=0
set islineid14=0
set islineid15=0
set islineid16=0
set islineid17=0
set islineid18=0
set levelpoint=3000
set flipstate=1
set point=0
set lines=0
if exist errorlevel.bat del errorlevel.bat
set /a num=%random% %%7 +1
set nextblock=!num! 
set num=nul
TIMEOUT /T 1 >NUL
set /a num=%random% %%7 +1
set blockid=!num! 
set num=nul
title 
goto newblock2
:newblock
goto line
:newblock2
set blockid=%nextblock%
set /a num=%random% %%7 +1
set nextblock=!num! 
set num=nul
if "%nextblock%" == "1 " (
	set bps1=%brick%
	set bps2= 
	set bps3=%brick%
	set bps4= 
	set bps5= 
	set bps6=%brick%
	set bps7= 
	set bps8=%brick%
	goto consu
)
if "%nextblock%" == "2 " (
	set bps1= 
	set bps2=%brick%
	set bps3= 
	set bps4= 
	set bps5=%brick%
	set bps6=%brick%
	set bps7=%brick%
	set bps8= 
	goto consu
)
if "%nextblock%" == "3 " (
	set bps1= 
	set bps2= 
	set bps3= 
	set bps4=%brick%
	set bps5=%brick%
	set bps6=%brick%
	set bps7=%brick%
	set bps8= 
	goto consu
)
if "%nextblock%" == "4 " (
	set bps1= 
	set bps2=%brick%
	set bps3=%brick%
	set bps4= 
	set bps5=%brick%
	set bps6=%brick%
	set bps7= 
	set bps8= 
	goto consu
)
if "%nextblock%" == "5 " (
	set bps1= 
	set bps2= 
	set bps3=%brick%
	set bps4=%brick%
	set bps5=%brick%
	set bps6=%brick%
	set bps7= 
	set bps8= 
	goto consu
)
if "%nextblock%" == "6 " (
	set bps1= 
	set bps2= 
	set bps3=%brick%
	set bps4= 
	set bps5=%brick%
	set bps6=%brick%
	set bps7=%brick%
	set bps8= 
	goto consu
)
if "%nextblock%" == "7 " (
	set bps1= 
	set bps2=%brick%
	set bps3=%brick%
	set bps4= 
	set bps5= 
	set bps6=%brick%
	set bps7=%brick%
	set bps8= 
	goto consu
)
:consu
set bp1=%bps1%
set bp2=%bps2%
set bp3=%bps3%
set bp4=%bps4%
set bp5=%bps5%
set bp6=%bps6%
set bp7=%bps7%
set bp8=%bps8%
set flipstate=1
set x=18
set x1=18
set x2=18
set x3=18
set reop=18
set reop1=18
set reop2=18
set reop3=18
if "%blockid%" == "1 " (
	set /a x1=%x%+1
	set /a x2=%x%+2
	set /a x3=%x%-1
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "2 " (
	set /a x1=%x%+1
	set /a x2=%x%-1
	set /a x3=%x%-13
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "3 " (
	set /a x1=%x%-1
	set /a x2=%x%+1
	set /a x3=%x%-11
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "4 " (
	set /a x1=%x%-1
	set /a x2=%x%+12
	set /a x3=%x%+11
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "5 " (
	set /a x1=%x%-1
	set /a x2=%x%-12
	set /a x3=%x%-11
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "6 " (
	set /a x1=%x%-12
	set /a x2=%x%-1
	set /a x3=%x%+1
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
if "%blockid%" == "7 " (
	set /a x1=%x%+1
	set /a x2=%x%-12
	set /a x3=%x%-13
	set a18=!brick!
	set a!x1!=!brick!
	set a!x2!=!brick!
	set a!x3!=!brick!
	goto topa
)
:top
set a%x1%=!brick!
set a%x2%=!brick!
set a%x3%=!brick!
set dubreop=%x%
set dubreop1=%x1%
set dubreop2=%x2%
set dubreop3=%x3%
set times=0
if exist errorlevel.bat call errorlevel.bat & del errorlevel.bat
if "%input%" == "p " (
	:pausetop
	set input= 
	cls
	echo %b%          %b%%b%%b%%b%%b%%b%%b%
	echo %b%          %b%     %b%
	echo %b%          %b%     %b%
	echo %b%          %b%     %b%
	echo %b%          %b%     %b%
	echo %b%          %b%%b%%b%%b%%b%%b%%b%
	echo %b%          %b% Score
	echo %b%   Pause  %b% !points!
	echo %b%          %b% Level
	echo %b%          %b% !Level!
	echo %b%  Press   %b% %islinestoget%
	echo %b%          %b% %linestoget%
	echo %b% WAS or D %b%
	echo %b%          %b%
	echo %b%     Key  %b%
	echo %b%          %b%
	echo %b%    To    %b%
	echo %b%          %b%
	echo %b% Continue %b%
	echo %b%          %b%
	echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
	timeout /t 1 >nul
	if exist errorlevel.bat call errorlevel.bat & del errorlevel.bat
	if "!input!" == "w " goto endpause
	if "!input!" == "a " goto endpause
	if "!input!" == "s " goto endpause
	if "!input!" == "d " goto endpause
	goto pausetop
	:endpause
	set input=nul
	if exist errorlevel.bat del errorlevel.bat
)
if "%input%" == "w " (
	set flipstate=1
	if "%flipstate%" == "1" (
		if "%blockid%" == "1 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!-26
			set /a x3=!x3!+13
			set flipstate=2
			goto nexta
		)
		if "%blockid%" == "2 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+11
			set /a x2=!x2!-11
			set /a x3=!x3!+2
			set flipstate=2
			goto nexta
		)
		if "%blockid%" == "3 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-11
			set /a x2=!x2!+11
			set /a x3=!x3!+24
			set flipstate=2
			goto nexta
		)
		if "%blockid%" == "5 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-11
			set /a x2=!x2!+13
			set /a x3=!x3!+24
			set flipstate=2
			goto nexta
		)
		if "%blockid%" == "6 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!-11
			set /a x3=!x3!+11
			set flipstate=2
			goto nexta
		)
		if "%blockid%" == "7 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+11
			set /a x2=!x2!+13
			set /a x3=!x3!+2
			set flipstate=2
			goto nexta
		)
	)
	if "%flipstate%" == "2" (
		if "%blockid%" == "1 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!+26
			set /a x3=!x3!-13
			set flipstate=1
			goto nexta
		)
		if "%blockid%" == "2 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!+13
			set /a x3=!x3!+24
			set flipstate=3
			goto nexta
		)
		if "%blockid%" == "3 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!-13
			set /a x3=!x3!-2
			set flipstate=3
			goto nexta
		)
		if "%blockid%" == "5 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!+11
			set /a x3=!x3!-2
			set flipstate=3
			goto nexta
		)
		if "%blockid%" == "6 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+11
			set /a x2=!x2!+13
			set /a x3=!x3!-13
			set flipstate=3
			goto nexta
		)
		if "%blockid%" == "7 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!+11
			set /a x3=!x3!+24
			set flipstate=3
			goto nexta
		)
	)
	if "%flipstate%" == "3" (
		if "%blockid%" == "2 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-11
			set /a x2=!x2!+11
			set /a x3=!x3!-2
			set flipstate=4
			goto nexta
		)
		if "%blockid%" == "3 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+11
			set /a x2=!x2!-11
			set /a x3=!x3!-24
			set flipstate=4
			goto nexta
		)
		if "%blockid%" == "5 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+11
			set /a x2=!x2!-13
			set /a x3=!x3!-24
			set flipstate=4
			goto nexta
		)
		if "%blockid%" == "6 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!+11
			set /a x3=!x3!-11
			set flipstate=4
			goto nexta
		)
		if "%blockid%" == "7 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-11
			set /a x2=!x2!-13
			set /a x3=!x3!-2
			set flipstate=4
			goto nexta
		)
	)
	if "%flipstate%" == "4" (
		if "%blockid%" == "2 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!-13
			set /a x3=!x3!-24
			set flipstate=1
			goto nexta
		)
		if "%blockid%" == "3 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!+13
			set /a x3=!x3!+2
			set flipstate=1
			goto nexta
		)
		if "%blockid%" == "5 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-13
			set /a x2=!x2!-11
			set /a x3=!x3!+2
			set flipstate=1
			goto nexta
		)
		if "%blockid%" == "6 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!-11
			set /a x2=!x2!-13
			set /a x3=!x3!+13
			set flipstate=1
			goto nexta
		)
		if "%blockid%" == "7 " (
			set reop=!x!
			set reop1=!x1!
			set reop2=!x2!
			set reop3=!x3!
			set /a x1=!x1!+13
			set /a x2=!x2!-11
			set /a x3=!x3!-24
			set flipstate=1
			goto nexta
		)
	)
)
if "%input%" == "s " (
	set times=1
	set reop=!x!
	set reop1=!x1!
	set reop2=!x2!
	set reop3=!x3!
	set dubreop=%x%
	set dubreop1=%x1%
	set dubreop2=%x2%
	set dubreop3=%x3%
	goto nexta
)
if "%input%" == "a " (
	set reop=!x!
	set reop1=!x1!
	set reop2=!x2!
	set reop3=!x3!
	set dubreop=%x%
	set dubreop1=%x1%
	set dubreop2=%x2%
	set dubreop3=%x3%
	set /a x=!x!-1
	set /a x1=!x1!-1
	set /a x2=!x2!-1
	set /a x3=!x3!-1
	if "!a%x%!" == "%sbrick%" set x=%dubreop%
	if "!a%x1%!" == "%sbrick%" set x1=%dubreop1%
	if "!a%x2%!" == "%sbrick%" set x2=%dubreop2%
	if "!a%x3%!" == "%sbrick%" set x3=%dubreop3%
	goto nexta
)
if "%input%" == "d " (
	set reop=!x!
	set reop1=!x1!
	set reop2=!x2!
	set reop3=!x3!
	set dubreop=%x%
	set dubreop1=%x1%
	set dubreop2=%x2%
	set dubreop3=%x3%
	set /a x=!x!+1
	set /a x1=!x1!+1
	set /a x2=!x2!+1
	set /a x3=!x3!+1
	if "!a%x%!" == "%sbrick%" set x=%dubreop%
	if "!a%x1%!" == "%sbrick%" set x1=%dubreop1%
	if "!a%x2%!" == "%sbrick%" set x2=%dubreop2%
	if "!a%x3%!" == "%sbrick%" set x3=%dubreop3%
	goto nexta
)
set reop=%x%
set reop1=%x1%
set reop2=%x2%
set reop3=%x3%
:nexta
if "%x%" == "13" goto backs
if "%x%" == "25" goto backs
if "%x%" == "37" goto backs
if "%x%" == "49" goto backs
if "%x%" == "61" goto backs
if "%x%" == "73" goto backs
if "%x%" == "85" goto backs
if "%x%" == "97" goto backs
if "%x%" == "109" goto backs
if "%x%" == "121" goto backs
if "%x%" == "133" goto backs
if "%x%" == "145" goto backs
if "%x%" == "157" goto backs
if "%x%" == "169" goto backs
if "%x%" == "181" goto backs
if "%x%" == "193" goto backs
if "%x%" == "193" goto backs
if "%x%" == "205" goto backs
if "%x%" == "217" goto backs
if "%x%" == "229" goto backs
if "%x1%" == "13" goto backs
if "%x1%" == "25" goto backs
if "%x1%" == "37" goto backs
if "%x1%" == "49" goto backs
if "%x1%" == "61" goto backs
if "%x1%" == "73" goto backs
if "%x1%" == "85" goto backs
if "%x1%" == "97" goto backs
if "%x1%" == "109" goto backs
if "%x1%" == "121" goto backs
if "%x1%" == "133" goto backs
if "%x1%" == "145" goto backs
if "%x1%" == "157" goto backs
if "%x1%" == "169" goto backs
if "%x1%" == "181" goto backs
if "%x1%" == "193" goto backs
if "%x1%" == "193" goto backs
if "%x1%" == "205" goto backs
if "%x1%" == "217" goto backs
if "%x1%" == "229" goto backs
if "%x2%" == "13" goto backs
if "%x2%" == "25" goto backs
if "%x2%" == "37" goto backs
if "%x2%" == "49" goto backs
if "%x2%" == "61" goto backs
if "%x2%" == "73" goto backs
if "%x2%" == "85" goto backs
if "%x2%" == "97" goto backs
if "%x2%" == "109" goto backs
if "%x2%" == "121" goto backs
if "%x2%" == "133" goto backs
if "%x2%" == "145" goto backs
if "%x2%" == "157" goto backs
if "%x2%" == "169" goto backs
if "%x2%" == "181" goto backs
if "%x2%" == "193" goto backs
if "%x2%" == "193" goto backs
if "%x2%" == "205" goto backs
if "%x2%" == "217" goto backs
if "%x2%" == "229" goto backs
if "%x3%" == "13" goto backs
if "%x3%" == "25" goto backs
if "%x3%" == "37" goto backs
if "%x3%" == "49" goto backs
if "%x3%" == "61" goto backs
if "%x3%" == "73" goto backs
if "%x3%" == "85" goto backs
if "%x3%" == "97" goto backs
if "%x3%" == "109" goto backs
if "%x3%" == "121" goto backs
if "%x3%" == "133" goto backs
if "%x3%" == "145" goto backs
if "%x3%" == "157" goto backs
if "%x3%" == "169" goto backs
if "%x3%" == "181" goto backs
if "%x3%" == "193" goto backs
if "%x3%" == "193" goto backs
if "%x3%" == "205" goto backs
if "%x3%" == "217" goto backs
if "%x3%" == "229" goto backs
if "%x%" == "24" goto backs
if "%x%" == "36" goto backs
if "%x%" == "48" goto backs
if "%x%" == "60" goto backs
if "%x%" == "72" goto backs
if "%x%" == "84" goto backs
if "%x%" == "96" goto backs
if "%x%" == "108" goto backs
if "%x%" == "120" goto backs
if "%x%" == "132" goto backs
if "%x%" == "144" goto backs
if "%x%" == "156" goto backs
if "%x%" == "168" goto backs
if "%x%" == "180" goto backs
if "%x%" == "192" goto backs
if "%x%" == "204" goto backs
if "%x%" == "216" goto backs
if "%x%" == "228" goto backs
if "%x%" == "240" goto backs
if "%x%" == "252" goto backs
if "%x1%" == "24" goto backs
if "%x1%" == "36" goto backs
if "%x1%" == "48" goto backs
if "%x1%" == "60" goto backs
if "%x1%" == "72" goto backs
if "%x1%" == "84" goto backs
if "%x1%" == "96" goto backs
if "%x1%" == "108" goto backs
if "%x1%" == "120" goto backs
if "%x1%" == "132" goto backs
if "%x1%" == "144" goto backs
if "%x1%" == "156" goto backs
if "%x1%" == "168" goto backs
if "%x1%" == "180" goto backs
if "%x1%" == "192" goto backs
if "%x1%" == "204" goto backs
if "%x1%" == "216" goto backs
if "%x1%" == "228" goto backs
if "%x1%" == "240" goto backs
if "%x1%" == "252" goto backs
if "%x2%" == "24" goto backs
if "%x2%" == "36" goto backs
if "%x2%" == "48" goto backs
if "%x2%" == "60" goto backs
if "%x2%" == "72" goto backs
if "%x2%" == "84" goto backs
if "%x2%" == "96" goto backs
if "%x2%" == "108" goto backs
if "%x2%" == "120" goto backs
if "%x2%" == "132" goto backs
if "%x2%" == "144" goto backs
if "%x2%" == "156" goto backs
if "%x2%" == "168" goto backs
if "%x2%" == "180" goto backs
if "%x2%" == "192" goto backs
if "%x2%" == "204" goto backs
if "%x2%" == "216" goto backs
if "%x2%" == "228" goto backs
if "%x2%" == "240" goto backs
if "%x2%" == "252" goto backs
if "%x3%" == "24" goto backs
if "%x3%" == "36" goto backs
if "%x3%" == "48" goto backs
if "%x3%" == "60" goto backs
if "%x3%" == "72" goto backs
if "%x3%" == "84" goto backs
if "%x3%" == "96" goto backs
if "%x3%" == "108" goto backs
if "%x3%" == "120" goto backs
if "%x3%" == "132" goto backs
if "%x3%" == "144" goto backs
if "%x3%" == "156" goto backs
if "%x3%" == "168" goto backs
if "%x3%" == "180" goto backs
if "%x3%" == "192" goto backs
if "%x3%" == "204" goto backs
if "%x3%" == "216" goto backs
if "%x3%" == "228" goto backs
if "%x3%" == "240" goto backs
if "%x3%" == "252" goto backs
if "!a%x%!" == "%sbrick%" goto backs
if "!a%x1%!" == "%sbrick%" goto backs
if "!a%x2%!" == "%sbrick%" goto backs
if "!a%x3%!" == "%sbrick%" goto backs
goto tup
:backs
set x=%dubreop%
set x1=%dubreop1%
set x2=%dubreop2%
set x3=%dubreop3%
goto qq
:tup

:qq
set input=nul
if "%blockid%" == "nul" goto newblock
set /a x=%x%+12
set /a x1=%x1%+12
set /a x2=%x2%+12
set /a x3=%x3%+12
if %x% GTR 240 (
	goto newblock
)
if %x1% GTR 240 (
	goto newblock
)
if %x2% GTR 240 (
	goto newblock
)
if %x3% GTR 240 (
	goto newblock
)
if "!a%x%!" == "%sbrick%" (
	if not "%reop%" == "%x%" if not "%reop1%" == "%x%" if not "%reop2%" == "%x%" if not "%reop3%" == "%x%" goto newblock
)
if "!a%x1%!" == "%sbrick%" (
	if not "%reop%" == "%x1%" if not "%reop1%" == "%x1%" if not "%reop2%" == "%x1%" if not "%reop3%" == "%x1%" goto newblock
)
if "!a%x2%!" == "%sbrick%" (
	if not "%reop%" == "%x2%" if not "%reop1%" == "%x2%" if not "%reop2%" == "%x2%" if not "%reop3%" == "%x2%" goto newblock
)
if "!a%x3%!" == "%sbrick%" (
	if not "%reop%" == "%x3%" if not "%reop1%" == "%x3%" if not "%reop2%" == "%x3%" if not "%reop3%" == "%x3%" goto newblock
)
set a%reop%= 
set a%reop1%= 
set a%reop2%= 
set a%reop3%= 
set a%x%=%brick%
set a%x1%=%brick%
set a%x2%=%brick%
set a%x3%=%brick%
:topa
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% %level%
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
if "%times%" == "0" (
	if "%level%" == "0" (
		timeout /t 1 >nul
	)
	if "%level%" == "1" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "2" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "3" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "4" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "5" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "6" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "7" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "8" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
	if "%level%" == "9" (
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
		ping localhost -n 1 >nul
	)
) ELSE (
	echo.
)
for %%b in (b a1 a12 a13 a24 a36 a48 a60 a72 a84 a96 a108 a120 a132 a144 a156 a168 a180 a192 a204 a216 a228 a240 a25 a37 a49 a61 a73 a85 a97 a109 a121 a133 a145 a157 a169 a181 a193 a205 a217 a229 a24 a36 a241 a242 a243 a244 a245 a246 a247 a248 a249 a250 a251 a252 ) do set %%b=%border%
if "!type!" == "a" (
	set islinestoget= 
	set linestoget= 
)
goto top 


:line
set /a x=%x%-12
set /a x1=%x1%-12
set /a x2=%x2%-12
set /a x3=%x3%-12
set a%x%=%sbrick%
set a%x1%=%sbrick%
set a%x2%=%sbrick%
set a%x3%=%sbrick%
set x=0
set x1=0
set x2=0
set x3=0
for /l %%u in (1,1,252) do (
	if "!a%%u!" == "!brick!" set a%%u=!non!
)
for /l %%o in (14,1,23) do if "!a%%o!" == "!sbrick!" goto gameover
if "%a230%" == "%sbrick%" if "%a231%" == "%sbrick%" if "%a232%" == "%sbrick%" if "%a233%" == "%sbrick%" if "%a234%" == "%sbrick%" if "%a235%" == "%sbrick%" if "%a236%" == "%sbrick%" if "%a237%" == "%sbrick%" if "%a238%" == "%sbrick%" if "%a239%" == "%sbrick%" set lineid1=1
if "%a218%" == "%sbrick%" if "%a219%" == "%sbrick%" if "%a220%" == "%sbrick%" if "%a221%" == "%sbrick%" if "%a222%" == "%sbrick%" if "%a223%" == "%sbrick%" if "%a224%" == "%sbrick%" if "%a225%" == "%sbrick%" if "%a226%" == "%sbrick%" if "%a227%" == "%sbrick%" set lineid2=1
if "%a206%" == "%sbrick%" if "%a207%" == "%sbrick%" if "%a208%" == "%sbrick%" if "%a209%" == "%sbrick%" if "%a210%" == "%sbrick%" if "%a211%" == "%sbrick%" if "%a212%" == "%sbrick%" if "%a213%" == "%sbrick%" if "%a214%" == "%sbrick%" if "%a215%" == "%sbrick%" set lineid3=1
if "%a194%" == "%sbrick%" if "%a195%" == "%sbrick%" if "%a196%" == "%sbrick%" if "%a197%" == "%sbrick%" if "%a198%" == "%sbrick%" if "%a199%" == "%sbrick%" if "%a200%" == "%sbrick%" if "%a201%" == "%sbrick%" if "%a202%" == "%sbrick%" if "%a203%" == "%sbrick%" set lineid4=1
if "%a182%" == "%sbrick%" if "%a183%" == "%sbrick%" if "%a184%" == "%sbrick%" if "%a185%" == "%sbrick%" if "%a186%" == "%sbrick%" if "%a187%" == "%sbrick%" if "%a188%" == "%sbrick%" if "%a189%" == "%sbrick%" if "%a190%" == "%sbrick%" if "%a191%" == "%sbrick%" set lineid5=1
if "%a170%" == "%sbrick%" if "%a171%" == "%sbrick%" if "%a172%" == "%sbrick%" if "%a173%" == "%sbrick%" if "%a174%" == "%sbrick%" if "%a175%" == "%sbrick%" if "%a176%" == "%sbrick%" if "%a177%" == "%sbrick%" if "%a178%" == "%sbrick%" if "%a179%" == "%sbrick%" set lineid6=1
if "%a158%" == "%sbrick%" if "%a159%" == "%sbrick%" if "%a160%" == "%sbrick%" if "%a161%" == "%sbrick%" if "%a162%" == "%sbrick%" if "%a163%" == "%sbrick%" if "%a164%" == "%sbrick%" if "%a165%" == "%sbrick%" if "%a166%" == "%sbrick%" if "%a167%" == "%sbrick%" set lineid7=1
if "%a146%" == "%sbrick%" if "%a147%" == "%sbrick%" if "%a148%" == "%sbrick%" if "%a149%" == "%sbrick%" if "%a150%" == "%sbrick%" if "%a151%" == "%sbrick%" if "%a152%" == "%sbrick%" if "%a153%" == "%sbrick%" if "%a154%" == "%sbrick%" if "%a155%" == "%sbrick%" set lineid8=1
if "%a134%" == "%sbrick%" if "%a135%" == "%sbrick%" if "%a136%" == "%sbrick%" if "%a137%" == "%sbrick%" if "%a138%" == "%sbrick%" if "%a139%" == "%sbrick%" if "%a140%" == "%sbrick%" if "%a141%" == "%sbrick%" if "%a142%" == "%sbrick%" if "%a143%" == "%sbrick%" set lineid9=1
if "%a122%" == "%sbrick%" if "%a123%" == "%sbrick%" if "%a124%" == "%sbrick%" if "%a125%" == "%sbrick%" if "%a126%" == "%sbrick%" if "%a127%" == "%sbrick%" if "%a128%" == "%sbrick%" if "%a129%" == "%sbrick%" if "%a130%" == "%sbrick%" if "%a131%" == "%sbrick%" set lineid10=1
if "%a110%" == "%sbrick%" if "%a111%" == "%sbrick%" if "%a112%" == "%sbrick%" if "%a113%" == "%sbrick%" if "%a114%" == "%sbrick%" if "%a115%" == "%sbrick%" if "%a116%" == "%sbrick%" if "%a117%" == "%sbrick%" if "%a118%" == "%sbrick%" if "%a119%" == "%sbrick%" set lineid18=1
if "%a98%" == "%sbrick%" if "%a99%" == "%sbrick%" if "%a100%" == "%sbrick%" if "%a101%" == "%sbrick%" if "%a102%" == "%sbrick%" if "%a103%" == "%sbrick%" if "%a104%" == "%sbrick%" if "%a105%" == "%sbrick%" if "%a106%" == "%sbrick%" if "%a107%" == "%sbrick%" set lineid11=1
if "%a86%" == "%sbrick%" if "%a87%" == "%sbrick%" if "%a88%" == "%sbrick%" if "%a89%" == "%sbrick%" if "%a90%" == "%sbrick%" if "%a91%" == "%sbrick%" if "%a92%" == "%sbrick%" if "%a93%" == "%sbrick%" if "%a94%" == "%sbrick%" if "%a95%" == "%sbrick%" set lineid12=1
if "%a74%" == "%sbrick%" if "%a75%" == "%sbrick%" if "%a76%" == "%sbrick%" if "%a77%" == "%sbrick%" if "%a78%" == "%sbrick%" if "%a79%" == "%sbrick%" if "%a80%" == "%sbrick%" if "%a81%" == "%sbrick%" if "%a82%" == "%sbrick%" if "%a83%" == "%sbrick%" set lineid13=1
if "%a62%" == "%sbrick%" if "%a63%" == "%sbrick%" if "%a64%" == "%sbrick%" if "%a65%" == "%sbrick%" if "%a66%" == "%sbrick%" if "%a67%" == "%sbrick%" if "%a68%" == "%sbrick%" if "%a69%" == "%sbrick%" if "%a70%" == "%sbrick%" if "%a71%" == "%sbrick%" set lineid14=1
if "%a50%" == "%sbrick%" if "%a51%" == "%sbrick%" if "%a52%" == "%sbrick%" if "%a53%" == "%sbrick%" if "%a54%" == "%sbrick%" if "%a55%" == "%sbrick%" if "%a56%" == "%sbrick%" if "%a57%" == "%sbrick%" if "%a58%" == "%sbrick%" if "%a59%" == "%sbrick%" set lineid15=1
if "%a38%" == "%sbrick%" if "%a39%" == "%sbrick%" if "%a40%" == "%sbrick%" if "%a41%" == "%sbrick%" if "%a42%" == "%sbrick%" if "%a43%" == "%sbrick%" if "%a44%" == "%sbrick%" if "%a45%" == "%sbrick%" if "%a46%" == "%sbrick%" if "%a47%" == "%sbrick%" set lineid16=1
if "%a26%" == "%sbrick%" if "%a27%" == "%sbrick%" if "%a28%" == "%sbrick%" if "%a29%" == "%sbrick%" if "%a30%" == "%sbrick%" if "%a31%" == "%sbrick%" if "%a32%" == "%sbrick%" if "%a33%" == "%sbrick%" if "%a34%" == "%sbrick%" if "%a35%" == "%sbrick%" set lineid17=1
set lines=0
set timeout=0
if "%lineid1%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (230,1,239) do set a%%p= 
)
if "%lineid2%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (218,1,227) do set a%%p= 
)
if "%lineid3%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (206,1,215) do set a%%p= 
)
if "%lineid4%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (194,1,203) do set a%%p= 
)
if "%lineid5%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (182,1,191) do set a%%p= 
)
if "%lineid6%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (170,1,179) do set a%%p= 
)
if "%lineid7%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (158,1,167) do set a%%p= 
)
if "%lineid8%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (146,1,155) do set a%%p= 
)
if "%lineid9%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (134,1,143) do set a%%p= 
)
if "%lineid10%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (122,1,131) do set a%%p= 
)
if "%lineid18%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (110,1,119) do set a%%p= 
)
if "%lineid11%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (98,1,107) do set a%%p= 
)
if "%lineid12%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (86,1,95) do set a%%p= 
)
if "%lineid13%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (74,1,83) do set a%%p= 
)
if "%lineid14%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (62,1,71) do set a%%p= 
)
if "%lineid15%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (50,1,59) do set a%%p= 
)
if "%lineid16%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (38,1,47) do set a%%p= 
)
if "%lineid17%" == "1" (
	set /a lines=!lines!+1
	set timeout=1
	for /l %%p in (26,1,35) do set a%%p= 
)
set showloopstate=1
:showloop
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% %level%
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "%lineid1%" == "1" (
	for /l %%p in (230,1,239) do set a%%p=!dbrick!
)
if "%lineid2%" == "1" (
	for /l %%p in (218,1,227) do set a%%p=!dbrick!
)
if "%lineid3%" == "1" (
	for /l %%p in (206,1,215) do set a%%p=!dbrick!
)
if "%lineid4%" == "1" (
	for /l %%p in (194,1,203) do set a%%p=!dbrick!
)
if "%lineid5%" == "1" (
	for /l %%p in (182,1,191) do set a%%p=!dbrick!
)
if "%lineid6%" == "1" (
	for /l %%p in (170,1,179) do set a%%p=!dbrick!
)
if "%lineid7%" == "1" (
	for /l %%p in (158,1,167) do set a%%p=!dbrick!
)
if "%lineid8%" == "1" (
	for /l %%p in (146,1,155) do set a%%p=!dbrick!
)
if "%lineid9%" == "1" (
	for /l %%p in (134,1,143) do set a%%p=!dbrick!
)
if "%lineid10%" == "1" (
	for /l %%p in (122,1,131) do set a%%p=!dbrick!
)
if "%lineid11%" == "1" (
	for /l %%p in (98,1,107) do set a%%p=!dbrick!
)
if "%lineid12%" == "1" (
	for /l %%p in (86,1,95) do set a%%p=!dbrick!
)
if "%lineid13%" == "1" (
	for /l %%p in (74,1,83) do set a%%p=!dbrick!
)
if "%lineid14%" == "1" (
	for /l %%p in (62,1,71) do set a%%p=!dbrick!
)
if "%lineid15%" == "1" (
	for /l %%p in (50,1,59) do set a%%p=!dbrick!
)
if "%lineid16%" == "1" (
	for /l %%p in (38,1,47) do set a%%p=!dbrick!
)
if "%lineid17%" == "1" (
	for /l %%p in (26,1,35) do set a%%p=!dbrick!
)
if "%lineid18%" == "1" (
	for /l %%p in (110,1,119) do set a%%p=!dbrick!
)
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% %level%
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "%lineid1%" == "1" (
	for /l %%p in (230,1,239) do set a%%p= 
)
if "%lineid2%" == "1" (
	for /l %%p in (218,1,227) do set a%%p= 
)
if "%lineid3%" == "1" (
	for /l %%p in (206,1,215) do set a%%p= 
)
if "%lineid4%" == "1" (
	for /l %%p in (194,1,203) do set a%%p= 
)
if "%lineid5%" == "1" (
	for /l %%p in (182,1,191) do set a%%p= 
)
if "%lineid6%" == "1" (
	for /l %%p in (170,1,179) do set a%%p= 
)
if "%lineid7%" == "1" (
	for /l %%p in (158,1,167) do set a%%p= 
)
if "%lineid8%" == "1" (
	for /l %%p in (146,1,155) do set a%%p= 
)
if "%lineid9%" == "1" (
	for /l %%p in (134,1,143) do set a%%p= 
)
if "%lineid10%" == "1" (
	for /l %%p in (122,1,131) do set a%%p= 
)
if "%lineid11%" == "1" (
	for /l %%p in (98,1,107) do set a%%p= 
)
if "%lineid12%" == "1" (
	for /l %%p in (86,1,95) do set a%%p= 
)
if "%lineid13%" == "1" (
	for /l %%p in (74,1,83) do set a%%p= 
)
if "%lineid14%" == "1" (
	for /l %%p in (62,1,71) do set a%%p= 
)
if "%lineid15%" == "1" (
	for /l %%p in (50,1,59) do set a%%p= 
)
if "%lineid16%" == "1" (
	for /l %%p in (38,1,47) do set a%%p= 
)
if "%lineid17%" == "1" (
	for /l %%p in (26,1,35) do set a%%p= 
)
if "%lineid18%" == "1" (
	for /l %%p in (110,1,119) do set a%%p= 
)
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% %level%
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
if "!timeout!" == "1" ping localhost -n 1 >nul
set /a showloopstate=!showloopstate!+1
if "!showloopstate!" == "4" goto nopeshow
goto showloop
:nopeshow
set loopstate=0
if "!level!" == "0" set prelevel=0&set level=1
if "!lines!" == "1" set /a pointa=40*!level!
if "!lines!" == "1" set /a point=!point!+!pointa!
if "!lines!" == "2" set /a pointa=100*!level!
if "!lines!" == "2" set /a point=!point!+!pointa!
if "!lines!" == "3" set /a pointa=300*!level!
if "!lines!" == "3" set /a point=!point!+!pointa!
if "!lines!" == "4" set /a pointa=1200*!level!
if "!lines!" == "4" set /a point=!point!+!pointa!
if "!prelevel!" == "0" set level=0
if not "!lines!" == "0" if "!islinestoget!" == "Lines" set /a linestoget=!linestoget!-!lines!
if not "!lines!" == "0" if "!islinestoget!" == "Lines" if !linestoget! == 0 goto gameover
:topofthemloop
for /l %%m in (1,1,18) do set isline%%m=0

if "%lines%" GTR "4" set errorcode=2&goto error

if not "!lines!" == "0" (
	:looptop
	if not "!isline1!" == "2" set isline1=0
	if not "!isline2!" == "2" set isline2=0
	if not "!isline3!" == "2" set isline3=0
	if not "!isline4!" == "2" set isline4=0
	if not "!isline5!" == "2" set isline5=0
	if not "!isline6!" == "2" set isline6=0
	if not "!isline7!" == "2" set isline7=0
	if not "!isline8!" == "2" set isline8=0
	if not "!isline9!" == "2" set isline9=0
	if not "!isline10!" == "2" set isline10=0
	if not "!isline11!" == "2" set isline11=0
	if not "!isline12!" == "2" set isline12=0
	if not "!isline13!" == "2" set isline13=0
	if not "!isline14!" == "2" set isline14=0
	if not "!isline15!" == "2" set isline15=0
	if not "!isline16!" == "2" set isline16=0
	if not "!isline17!" == "2" set isline17=0
	if not "!isline18!" == "2" set isline18=0
	if not "!isline1!" == "2" for /l %%q in (230,1,239) do if "!a%%q!" == "!sbrick!" set isline1=1
	if not "!isline2!" == "2" for /l %%q in (218,1,227) do if "!a%%q!" == "!sbrick!" set isline2=1
	if not "!isline3!" == "2" for /l %%q in (206,1,215) do if "!a%%q!" == "!sbrick!" set isline3=1
	if not "!isline4!" == "2" for /l %%q in (194,1,203) do if "!a%%q!" == "!sbrick!" set isline4=1
	if not "!isline5!" == "2" for /l %%q in (182,1,191) do if "!a%%q!" == "!sbrick!" set isline5=1
	if not "!isline6!" == "2" for /l %%q in (170,1,179) do if "!a%%q!" == "!sbrick!" set isline6=1
	if not "!isline7!" == "2" for /l %%q in (158,1,158) do if "!a%%q!" == "!sbrick!" set isline7=1
	if not "!isline8!" == "2" for /l %%q in (146,1,155) do if "!a%%q!" == "!sbrick!" set isline8=1
	if not "!isline9!" == "2" for /l %%q in (134,1,143) do if "!a%%q!" == "!sbrick!" set isline9=1
	if not "!isline10!" == "2" for /l %%q in (122,1,131) do if "!a%%q!" == "!sbrick!" set isline10=1
	if not "!isline18!" == "2" for /l %%q in (110,1,119) do if "!a%%q!" == "!sbrick!" set isline18=1
	if not "!isline11!" == "2" for /l %%q in (98,1,107) do if "!a%%q!" == "!sbrick!" set isline11=1
	if not "!isline12!" == "2" for /l %%q in (86,1,95) do if "!a%%q!" == "!sbrick!" set isline12=1
	if not "!isline13!" == "2" for /l %%q in (74,1,83) do if "!a%%q!" == "!sbrick!" set isline13=1
	if not "!isline14!" == "2" for /l %%q in (62,1,71) do if "!a%%q!" == "!sbrick!" set isline14=1
	if not "!isline15!" == "2" for /l %%q in (50,1,59) do if "!a%%q!" == "!sbrick!" set isline15=1
	if not "!isline16!" == "2" for /l %%q in (38,1,47) do if "!a%%q!" == "!sbrick!" set isline16=1
	if not "!isline17!" == "2" for /l %%q in (26,1,35) do if "!a%%q!" == "!sbrick!" set isline17=1
	set a=0
	cls
	echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
	echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
	echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
	echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
	echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
	echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
	echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
	echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
	echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
	echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% %level%
	echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
	echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
	echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
	echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
	echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
	echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
	echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
	echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
	echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
	echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
	echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
	if "!isline1!" == "0" (
		for /l %%q in (227,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline1=2
		goto looptop
	)
	if "!isline2!" == "0" (
		for /l %%q in (215,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline2=2
		goto looptop
	)
	if "!isline3!" == "0" (
		for /l %%q in (203,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline3=2
		goto looptop
	)
	if "!isline4!" == "0" (
		for /l %%q in (191,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline4=2
		goto looptop
	)
	if "!isline5!" == "0" (
		for /l %%q in (179,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline5=2
		goto looptop
	)
	if "!isline6!" == "0" (
		for /l %%q in (167,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline6=2
		goto looptop
	)
	if "!isline7!" == "0" (
		for /l %%q in (155,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline7=2
		goto looptop
	)
	if "!isline8!" == "0" (
		for /l %%q in (143,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline8=2
		goto looptop
	)
	if "!isline9!" == "0" (
		for /l %%q in (131,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline9=2
		goto looptop
	)
	if "!isline10!" == "0" (
		for /l %%q in (119,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline10=2
		goto looptop
	)
	if "!isline18!" == "0" (
		for /l %%q in (107,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline18=2
		goto looptop
	)
	if "!isline11!" == "0" (
		for /l %%q in (95,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline11=2
		goto looptop
	)
	if "!isline12!" == "0" (
		for /l %%q in (83,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline12=2
		goto looptop
	)
	if "!isline13!" == "0" (
		for /l %%q in (71,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline13=2
		goto looptop
	)
	if "!isline14!" == "0" (
		for /l %%q in (59,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline14=2
		goto looptop
	)
	if "!isline15!" == "0" (
		for /l %%q in (47,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline15=2
		goto looptop
	)
	if "!isline16!" == "0" (
		for /l %%q in (35,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline16=2
		goto looptop
	)
	if "!isline17!" == "0" (
		for /l %%q in (23,-1,14) do (
			IF "!a%%q!" == "!sbrick!" (
				set a%%q= 
				set /a a=%%q+12
				set a!a!=!sbrick!
			)
		)
		set isline17=2
		goto looptop
	)
)
set /a loopstate=!loopstate!+1
if "!loopstate!" == "4" goto skip
goto topofthemloop
:skip
if exist errorlevel.bat del errorlevel.bat
set lines=0
for /l %%m in (1,1,18) do set lineid%%m=0
for /l %%m in (1,1,18) do set isline%%m=0
for /l %%l in (1,1,%totalvariables%) do if "!a%%l!" == "!sbrick!" set /a point=!point!+1
if !point! GTR !levelpoint! (
	set /a level=!level!+1
	set /a levelpoint=!levelpoint!+3000
)
IF !point! GTR 99999 (
	mode 20,23
)
IF !point! GTR 999999 (
	mode 21,23
)
IF !point! GTR 9999999 (
	mode 22,23
)
IF !point! GTR 99999999 (
	mode 23,23
)
if "!level!" == "10" set level=9
goto newblock2
:gameover
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (230,1,239) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (218,1,227) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (206,1,215) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (194,1,203) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (182,1,191) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (170,1,179) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (158,1,167) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (146,1,155) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (134,1,143) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (122,1,131) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (110,1,119) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (98,1,107) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (86,1,95) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (74,1,83) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (62,1,71) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (50,1,59) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (38,1,47) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (26,1,35) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (14,1,23) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (2,1,11) do set a%%q=!sbrick!
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
timeout /t 1 >nul
for /l %%q in (2,1,11) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (14,1,23) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (26,1,35) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (38,1,47) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%%a51%%a52%%a53%%a54%%a55%%a56%%a57%%a58%%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (50,1,59) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%%a63%%a64%%a65%%a66%%a67%%a68%%a69%%a70%%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (62,1,71) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%%a75%%a76%%a77%%a78%%a79%%a80%%a81%%a82%%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (74,1,83) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%%a87%%a88%%a89%%a90%%a91%%a92%%a93%%a94%%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (86,1,95) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%%a99%%a100%%a101%%a102%%a103%%a104%%a105%%a106%%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (98,1,107) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%%a111%%a112%%a113%%a114%%a115%%a116%%a117%%a118%%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (110,1,119) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%%a123%%a124%%a125%%a126%%a127%%a128%%a129%%a130%%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (122,1,131) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (134,1,143) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (146,1,155) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%%a159%%a160%%a161%%a162%%a163%%a164%%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (158,1,167) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (170,1,179) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%%a184%%a185%%a186%%a187%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (182,1,191) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%Try%a184%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (194,1,203) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%Try%a184%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%%a209%%a210%%a211%%a212%%a213%%a214%%a215%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (206,1,215) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%Try%a184%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%Again%a210%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (218,1,227) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%Try%a184%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%Again%a210%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
for /l %%q in (230,1,239) do set a%%q= 
ping localhost -n 1 >nul
cls
echo %a1%%a2%%a3%%a4%%a5%%a6%%a7%%a8%%a9%%a10%%a11%%a12%%b%%b%%b%%b%%b%%b%
echo %a13%%a14%%a15%%a16%%a17%%a18%%a19%%a20%%a21%%a22%%a23%%a24%  %bp1%  %b%
echo %a25%%a26%%a27%%a28%%a29%%a30%%a31%%a32%%a33%%a34%%a35%%a36% %bp2%%bp3%%bp4% %b%
echo %a37%%a38%%a39%%a40%%a41%%a42%%a43%%a44%%a45%%a46%%a47%%a48% %bp5%%bp6%%bp7% %b%
echo %a49%%a50%ÉÍÍÍÍÍÍ»%a59%%a60%  %bp8%  %b%
echo %a61%%a62%º%a64%%a65%%a66%%a67%%a68%%a69%º%a71%%a72%%b%%b%%b%%b%%b%%b%
echo %a73%%a74%º%a76%Game%a81%º%a83%%a84% Score
echo %a85%%a86%º%a88%%a89%%a90%%a91%%a92%%a93%º%a95%%a96% %point%
echo %a97%%a98%º%a100%Over%a105%º%a107%%a108% Level
echo %a109%%a110%º%a112%%a113%%a114%%a115%%a116%%a117%º%a119%%a120% !level!
echo %a121%%a122%ÈÍÍÍÍÍÍ¼%a131%%a132% %islinestoget%
echo %a133%%a134%%a135%%a136%%a137%%a138%%a139%%a140%%a141%%a142%%a143%%a144% %linestoget%
echo %a145%%a146%%a147%%a148%%a149%%a150%%a151%%a152%%a153%%a154%%a155%%a156%
echo %a157%%a158%Please%a165%%a166%%a167%%a168%
echo %a169%%a170%%a171%%a172%%a173%%a174%%a175%%a176%%a177%%a178%%a179%%a180%
echo %a181%%a182%%a183%Try%a184%%a188%%a189%%a190%%a191%%a192%
echo %a193%%a194%%a195%%a196%%a197%%a198%%a199%%a200%%a201%%a202%%a203%%a204%
echo %a205%%a206%%a207%%a208%Again%a210%%a216%
echo %a217%%a218%%a219%%a220%%a221%%a222%%a223%%a224%%a225%%a226%%a227%%a228%
echo %a229%%a230%%a231%%a232%%a233%%a234%%a235%%a236%%a237%%a238%%a239%%a240%
echo %a241%%a242%%a243%%a244%%a245%%a246%%a247%%a248%%a249%%a250%%a251%%a252%
pause >nul
cls
if "!type!" == "b" if "!height!" == "5" if "!level!" == "9" call :spaceshuttle
if "!islinestoget!" == "Lines" if exist scoreb.bat call scoreb.bat
if "!islinestoget!" == "Lines" if not exist scoreb.bat call :scoremakeb
if not "!islinestoget!" == "Lines" if exist score.bat call score.bat
if not "!islinestoget!" == "Lines" if not exist score.bat call :scoremake
set scorepos=0
if %point% GEQ %sname10sc% set scorepos=10
if %point% GEQ %sname9sc% set scorepos=9
if %point% GEQ %sname8sc% set scorepos=8
if %point% GEQ %sname7sc% set scorepos=7
if %point% GEQ %sname6sc% set scorepos=6
if %point% GEQ %sname5sc% set scorepos=5
if %point% GEQ %sname4sc% set scorepos=4
if %point% GEQ %sname3sc% set scorepos=3
if %point% GEQ %sname2sc% set scorepos=2
if %point% GEQ	 %sname1sc% set scorepos=1
if %scorepos% == "0" goto main
if !point! GTR 200000 call :rocket2
if !point! GTR 100000 call :rocket1
:endgame
IF !point! GTR 99999 (
	mode 20,23
)
IF !point! GTR 999999 (
	mode 21,23
)
IF !point! GTR 9999999 (
	mode 22,23
)
IF !point! GTR 99999999 (
	mode 23,23
)
cls
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%  %bp1%  %b%
echo %b% What is  %b% %bp2%%bp3%%bp4% %b%
echo %b%          %b% %bp5%%bp6%%bp7% %b%
echo %b%   Your   %b%  %bp8%  %b%
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%  Name?   %b% Score
echo %b%          %b% %point%
echo %b% (1-8 cha %b% Level
echo %b% racters) %b% %level%
echo %b%          %b% %islinestoget%
echo %b%          %b% %linestoget%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%          %b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
set /p name=:
if not "%name:~8%" == "" (
	cls
	echo %b%          %b%%b%%b%%b%%b%%b%%b%
	echo %b%          %b%  %bp1%  %b%
	echo %b%          %b% %bp2%%bp3%%bp4% %b%
	echo %b%          %b% %bp5%%bp6%%bp7% %b%
	echo %b%          %b%  %bp8%  %b%
	echo %b%          %b%%b%%b%%b%%b%%b%%b%
	echo %b%   Only   %b% Score
	echo %b%          %b% %point%
	echo %b% 1-8 cha- %b% Level
	echo %b% racters  %b% %level%
	echo %b%          %b% %islinestoget%
	echo %b%          %b% %linestoget%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%          %b%
	echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
	timeout /t 2 >nul
	goto endgame
)
if "!islinestoget!" == "Lines" if exist scoreb.bat call scoreb.bat
if "!islinestoget!" == "Lines" if not exist scoreb.bat call :scoremakeb
if not "!islinestoget!" == "Lines" if exist score.bat call score.bat
if not "!islinestoget!" == "Lines" if not exist score.bat call :scoremake
set spacer1=
set spacer2=
set spacer3=
set spacer4=
set spacer5=
set spacer6=
set spacer7=
if "%name:~7%" == "" set spacer1= 
if "%name:~6%" == "" set spacer2= 
if "%name:~5%" == "" set spacer3= 
if "%name:~4%" == "" set spacer4= 
if "%name:~3%" == "" set spacer5= 
if "%name:~2%" == "" set spacer6= 
if "%name:~1%" == "" set spacer7= 
set name=%name%%spacer1%%spacer2%%spacer3%%spacer4%%spacer5%%spacer6%%spacer7%
if "%scorename%" == " " (cls&goto endgame)
if "%scorepos%" == "1" (
	set sname2=%sname1%
	set sname2sc=%sname1sc%
	set sname3=%sname2%
	set sname3sc=%sname2sc%
	set sname4=%sname3%
	set sname4sc=%sname3sc%
	set sname5=%sname4%
	set sname5sc=%sname4sc%
	set sname6=%sname5%
	set sname6sc=%sname5sc%
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname1=%name%
	set sname1sc=%point%
	goto conscore
)
if "%scorepos%" == "2" (
	set sname3=%sname2%
	set sname3sc=%sname2sc%
	set sname4=%sname3%
	set sname4sc=%sname3sc%
	set sname5=%sname4%
	set sname5sc=%sname4sc%
	set sname6=%sname5%
	set sname6sc=%sname5sc%
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname2=%name%
	set sname2sc=%point%
	goto conscore
)
if "%scorepos%" == "3" (
	set sname4=%sname3%
	set sname4sc=%sname3sc%
	set sname5=%sname4%
	set sname5sc=%sname4sc%
	set sname6=%sname5%
	set sname6sc=%sname5sc%
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname3=%name%
	set sname3sc=%point%
	goto conscore
)
if "%scorepos%" == "4" (
	set sname5=%sname4%
	set sname5sc=%sname4sc%
	set sname6=%sname5%
	set sname6sc=%sname5sc%
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname4=%name%
	set sname4sc=%point%
	goto conscore
)
if "%scorepos%" == "5" (
	set sname6=%sname5%
	set sname6sc=%sname5sc%
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname5=%name%
	set sname5sc=%point%
	goto conscore
)
if "%scorepos%" == "6" (
	set sname7=%sname6%
	set sname7sc=%sname6sc%
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname6=%name%
	set sname6sc=%point%
	goto conscore
)
if "%scorepos%" == "7" (
	set sname8=%sname7%
	set sname8sc=%sname7sc%
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname7=%name%
	set sname7sc=%point%
	goto conscore
)
if "%scorepos%" == "8" (
	set sname9=%sname8%
	set sname9sc=%sname8sc%
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname8=%name%
	set sname8sc=%point%
	goto conscore
)
if "%scorepos%" == "9" (
	set sname10=%sname9%
	set sname10sc=%sname9sc%
	set sname9=%name%
	set sname9sc=%point%
	goto conscore
)
if "%scorepos%" == "10" (
	set sname10=%name%
	set sname10sc=%point%
	goto conscore
)
:conscore
if "!islinestoget!" == "Lines" (
	if exist scoreb.bat del scoreb.bat
	echo set sname1=!sname1!>>scoreb.bat
	echo set sname1sc=!sname1sc!>>scoreb.bat
	echo set sname2=!sname2!>>scoreb.bat
	echo set sname2sc=!sname2sc!>>scoreb.bat
	echo set sname3=!sname3!>>scoreb.bat
	echo set sname3sc=!sname3sc!>>scoreb.bat
	echo set sname4=!sname4!>>scoreb.bat
	echo set sname4sc=!sname4sc!>>scoreb.bat
	echo set sname5=!sname5!>>scoreb.bat
	echo set sname5sc=!sname5sc!>>scoreb.bat
	echo set sname6=!sname6!>>scoreb.bat
	echo set sname6sc=!sname6sc!>>scoreb.bat
	echo set sname7=!sname7!>>scoreb.bat
	echo set sname7sc=!sname7sc!>>scoreb.bat
	echo set sname8=!sname8!>>scoreb.bat
	echo set sname8sc=!sname8sc!>>scoreb.bat
	echo set sname9=!sname9!>>scoreb.bat
	echo set sname9sc=!sname9sc!>>scoreb.bat
	echo set sname10=!sname10!>>scoreb.bat
	echo set sname10sc=!sname10sc!>>scoreb.bat
	goto scores
) ELSE (
	if exist score.bat del score.bat
	echo set sname1=!sname1!>>score.bat
	echo set sname1sc=!sname1sc!>>score.bat
	echo set sname2=!sname2!>>score.bat
	echo set sname2sc=!sname2sc!>>score.bat
	echo set sname3=!sname3!>>score.bat
	echo set sname3sc=!sname3sc!>>score.bat
	echo set sname4=!sname4!>>score.bat
	echo set sname4sc=!sname4sc!>>score.bat
	echo set sname5=!sname5!>>score.bat
	echo set sname5sc=!sname5sc!>>score.bat
	echo set sname6=!sname6!>>score.bat
	echo set sname6sc=!sname6sc!>>score.bat
	echo set sname7=!sname7!>>score.bat
	echo set sname7sc=!sname7sc!>>score.bat
	echo set sname8=!sname8!>>score.bat
	echo set sname8sc=!sname8sc!>>score.bat
	echo set sname9=!sname9!>>score.bat
	echo set sname9sc=!sname9sc!>>score.bat
	echo set sname10=!sname10!>>score.bat
	echo set sname10sc=!sname10sc!>>score.bat
	goto scores
)


:scoremake
echo set sname1=Name1   >>score.bat
echo set sname1sc=000>>score.bat
echo set sname2=Name2   >>score.bat
echo set sname2sc=000>>score.bat
echo set sname3=Name3   >>score.bat
echo set sname3sc=000>>score.bat
echo set sname4=Name4   >>score.bat
echo set sname4sc=000>>score.bat
echo set sname5=Name5   >>score.bat
echo set sname5sc=000>>score.bat
echo set sname6=Name6   >>score.bat
echo set sname6sc=000>>score.bat
echo set sname7=Name7   >>score.bat
echo set sname7sc=000>>score.bat
echo set sname8=Name8   >>score.bat
echo set sname8sc=000>>score.bat
echo set sname9=Andy    >>score.bat
echo set sname9sc=-1 >>score.bat
echo set sname10=Robodale>>score.bat
echo set sname10sc=-999>>score.bat
if not exist score.bat set errorcode=4&goto error
exit/b

:scoremakeb
echo set sname1=Name1   >>scoreb.bat
echo set sname1sc=000>>scoreb.bat
echo set sname2=Name2   >>scoreb.bat
echo set sname2sc=000>>scoreb.bat
echo set sname3=Name3   >>scoreb.bat
echo set sname3sc=000>>scoreb.bat
echo set sname4=Name4   >>scoreb.bat
echo set sname4sc=000>>scoreb.bat
echo set sname5=Name5   >>scoreb.bat
echo set sname5sc=000>>scoreb.bat
echo set sname6=Name6   >>scoreb.bat
echo set sname6sc=000>>scoreb.bat
echo set sname7=Name7   >>scoreb.bat
echo set sname7sc=000>>scoreb.bat
echo set sname8=Name8   >>scoreb.bat
echo set sname8sc=000>>scoreb.bat
echo set sname9=Andy    >>scoreb.bat
echo set sname9sc=-1 >>scoreb.bat
echo set sname10=Robodale>>scoreb.bat
echo set sname10sc=-999>>scoreb.bat
if not exist scoreb.bat set errorcode=4&goto error
exit/b

:excar
mode 80,50
echo.
echo      1:      2:      3:      4:      5:      6:      11:     12: 
echo.
echo      14:     15:     16:     17:     18:     19:     20:     21: 
echo.
echo      22:     23:     24:     25:     27:     28:     29:     30:    
echo.
echo      31: 
echo.
echo                 Characters 32-126 can be accessed via keyboard.
echo.
echo.
echo      127:    128: €   129:    130: ‚   131: ƒ   132: „   133: …   134: †
echo.
echo      135: ‡   136: ˆ   137: ‰   138: Š   139: ‹   140: Œ   141:    142: Ž
echo.
echo      143:    144:    145: ‘   146: ’   147: “   148: ”   149: •   150: –
echo.
echo      151: —   152: ˜   153: ™   154: š   155: ›   156: œ   157:    158: ž
echo.
echo      159: Ÿ   160:     161: ¡   162: ¢   163: £   164: ¤   165: ¥   166: ¦
echo.
echo      167: §   168: ¨   169: ©   170: ª   171: «   172: ¬   173: ­   174: ®
echo.
echo      175: ¯   176: °   177: ±   178: ²   179: ³   180: ´   181: µ   182: ¶
echo.
echo      183: ·   184: ¸   185: ¹   186: º   187: »   188: ¼   189: ½   190: ¾
echo.
echo      191: ¿   192: À   193: Á   194: Â   195: Ã   196: Ä   197: Å   198: Æ
echo.
echo      199: Ç   200: È   201: É   202: Ê   203: Ë   204: Ì   205: Í   206: Î
echo.
echo      207: Ï   208: Ð   209: Ñ   210: Ò   211: Ó   212: Ô   213: Õ   214: Ö
echo.
echo      215: ×   216: Ø   217: Ù   218: Ú   219: Û   220: Ü   221: Ý   222: Þ
echo.
echo      223: ß   224: à   225: á   226: â   227: ã   228: ä   229: å   230: æ
echo.
echo      231: ç   232: è   233: é   234: ê   235: ë   236: ì   237: í   238: î
echo.
echo      239: ï   240: ð   241: ñ   242: ò   243: ó   244: ô   245: õ   246: ö
echo.
echo      247: ÷   248: ø   249: ù   250: ú   251: û   252: ü   253: ý   254: þ
echo Type -b to go back
set /p assa=Enter the character you want:
if "%assa%" == "-b" goto config
cls
if "!assa!" == "1" set assa=
if "!assa!" == "2" set assa=
if "!assa!" == "3" set assa=
if "!assa!" == "4" set assa=
if "!assa!" == "5" set assa=
if "!assa!" == "6" set assa=
if "!assa!" == "11" set assa=
if "!assa!" == "12" set assa=
if "!assa!" == "14" set assa=
if "!assa!" == "15" set assa=
if "!assa!" == "16" set assa=
if "!assa!" == "17" set assa=
if "!assa!" == "18" set assa=
if "!assa!" == "19" set assa=
if "!assa!" == "20" set assa=
if "!assa!" == "21" set assa=
if "!assa!" == "22" set assa=
if "!assa!" == "23" set assa=
if "!assa!" == "24" set assa=
if "!assa!" == "25" set assa=
if "!assa!" == "27" set assa=
if "!assa!" == "28" set assa=
if "!assa!" == "29" set assa=
if "!assa!" == "30" set assa=
if "!assa!" == "31" set assa=
if "!assa!" == "127" set assa=
if "!assa!" == "128" set assa=€
if "!assa!" == "129" set assa=
if "!assa!" == "130" set assa=‚
if "!assa!" == "131" set assa=ƒ
if "!assa!" == "132" set assa=„
if "!assa!" == "133" set assa=…
if "!assa!" == "134" set assa=†
if "!assa!" == "135" set assa=‡
if "!assa!" == "136" set assa=ˆ
if "!assa!" == "137" set assa=‰
if "!assa!" == "138" set assa=Š
if "!assa!" == "139" set assa=‹
if "!assa!" == "140" set assa=Œ
if "!assa!" == "141" set assa=
if "!assa!" == "142" set assa=Ž
if "!assa!" == "143" set assa=
if "!assa!" == "144" set assa=
if "!assa!" == "145" set assa=‘
if "!assa!" == "146" set assa=’
if "!assa!" == "147" set assa=“
if "!assa!" == "148" set assa=”
if "!assa!" == "149" set assa=•
if "!assa!" == "150" set assa=–
if "!assa!" == "151" set assa=—
if "!assa!" == "152" set assa=˜
if "!assa!" == "153" set assa=™
if "!assa!" == "154" set assa=š
if "!assa!" == "155" set assa=›
if "!assa!" == "156" set assa=œ
if "!assa!" == "157" set assa=
if "!assa!" == "158" set assa=ž
if "!assa!" == "159" set assa=Ÿ
if "!assa!" == "160" set assa= 
if "!assa!" == "161" set assa=¡
if "!assa!" == "162" set assa=¢
if "!assa!" == "163" set assa=£
if "!assa!" == "164" set assa=¤
if "!assa!" == "165" set assa=¥
if "!assa!" == "166" set assa=¦
if "!assa!" == "167" set assa=§
if "!assa!" == "168" set assa=¨
if "!assa!" == "169" set assa=©
if "!assa!" == "170" set assa=ª
if "!assa!" == "171" set assa=«
if "!assa!" == "172" set assa=¬
if "!assa!" == "173" set assa=­
if "!assa!" == "174" set assa=®
if "!assa!" == "175" set assa=¯
if "!assa!" == "176" set assa=°
if "!assa!" == "177" set assa=±
if "!assa!" == "178" set assa=²
if "!assa!" == "179" set assa=³
if "!assa!" == "180" set assa=´
if "!assa!" == "181" set assa=µ
if "!assa!" == "182" set assa=¶
if "!assa!" == "183" set assa=·
if "!assa!" == "184" set assa=¸
if "!assa!" == "185" set assa=¹
if "!assa!" == "186" set assa=º
if "!assa!" == "187" set assa=»
if "!assa!" == "188" set assa=¼
if "!assa!" == "189" set assa=½
if "!assa!" == "190" set assa=¾
if "!assa!" == "191" set assa=¿
if "!assa!" == "192" set assa=À
if "!assa!" == "193" set assa=Á
if "!assa!" == "194" set assa=Â
if "!assa!" == "195" set assa=Ã
if "!assa!" == "196" set assa=Ä
if "!assa!" == "197" set assa=Å
if "!assa!" == "198" set assa=Æ
if "!assa!" == "199" set assa=Ç
if "!assa!" == "200" set assa=È
if "!assa!" == "201" set assa=É
if "!assa!" == "202" set assa=Ê
if "!assa!" == "203" set assa=Ë
if "!assa!" == "204" set assa=Ì
if "!assa!" == "205" set assa=Í
if "!assa!" == "206" set assa=Î
if "!assa!" == "207" set assa=Ï
if "!assa!" == "208" set assa=Ð
if "!assa!" == "209" set assa=Ñ
if "!assa!" == "210" set assa=Ò
if "!assa!" == "211" set assa=Ó
if "!assa!" == "212" set assa=Ô
if "!assa!" == "213" set assa=Õ
if "!assa!" == "214" set assa=Ö
if "!assa!" == "215" set assa=×
if "!assa!" == "216" set assa=Ø
if "!assa!" == "217" set assa=Ù
if "!assa!" == "218" set assa=Ú
if "!assa!" == "219" set assa=Û
if "!assa!" == "220" set assa=Ü
if "!assa!" == "221" set assa=Ý
if "!assa!" == "222" set assa=Þ
if "!assa!" == "223" set assa=ß
if "!assa!" == "224" set assa=à
if "!assa!" == "225" set assa=á
if "!assa!" == "226" set assa=â
if "!assa!" == "227" set assa=ã
if "!assa!" == "228" set assa=ä
if "!assa!" == "229" set assa=å
if "!assa!" == "230" set assa=æ
if "!assa!" == "231" set assa=ç
if "!assa!" == "232" set assa=è
if "!assa!" == "233" set assa=é
if "!assa!" == "234" set assa=ê
if "!assa!" == "235" set assa=ë
if "!assa!" == "236" set assa=ì
if "!assa!" == "237" set assa=í
if "!assa!" == "238" set assa=î
if "!assa!" == "239" set assa=ï
if "!assa!" == "240" set assa=ð
if "!assa!" == "241" set assa=ñ
if "!assa!" == "242" set assa=ò
if "!assa!" == "243" set assa=ó
if "!assa!" == "244" set assa=ô
if "!assa!" == "245" set assa=õ
if "!assa!" == "246" set assa=ö
if "!assa!" == "247" set assa=÷
if "!assa!" == "248" set assa=ø
if "!assa!" == "249" set assa=ù
if "!assa!" == "250" set assa=ú
if "!assa!" == "251" set assa=û
if "!assa!" == "252" set assa=ü
if "!assa!" == "253" set assa=ý
if "!assa!" == "254" set assa=þ
exit/b

:inputmake
echo @echo off>>input.bat
echo mode 15,^3>>input.bat
echo title>>input.bat
echo :top>>input.bat
echo cls>>input.bat
echo choice /c:wasdp /n>>input.bat
echo if ERRORLEVEL 5 (>>input.bat
echo echo set input=p ^>errorlevel.bat>>input.bat
echo cls>>input.bat
echo echo Press here to  continue>>input.bat
echo pause^>nul>>input.bat
echo echo set input=w ^>errorlevel.bat>>input.bat
echo goto top>>input.bat
echo )>>input.bat
echo if ERRORLEVEL 4 (>>input.bat
echo echo set input=d ^>errorlevel.bat>>input.bat
echo goto top>>input.bat
echo )>>input.bat
echo if ERRORLEVEL 3 (>>input.bat
echo echo set input=s ^>errorlevel.bat>>input.bat
echo goto top>>input.bat
echo )>>input.bat
echo if ERRORLEVEL 2 (>>input.bat
echo echo set input=a ^>errorlevel.bat>>input.bat
echo goto top>>input.bat
echo )>>input.bat
echo if ERRORLEVEL 1 (>>input.bat
echo echo set input=w ^>errorlevel.bat>>input.bat
echo goto top>>input.bat
echo )>>input.bat
echo goto top>>input.bat

exit/b

:howtoplay
set apoint=100
set alevel=3
set abrick=%brick%
set asbrick=%sbrick%
mode 45,23
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b%     %b%
echo %b%          %b%  %abrick%  %b%
echo %b%          %b% %abrick%%abrick%%abrick% %b% The next block comming.
echo %b%          %b%     %b%
echo %b%          %b%%b%%b%%b%%b%%b%%b%
echo %b%          %b% Points
echo %b%          %b% %apoint% Your current points.
echo %b%          %b% Level
echo %b%          %b% %alevel% The level you are in,
echo %b%          %b%   the higher the number,
echo %b%          %b%   the faste the blocks
echo %b%          %b%   falls.
echo %b%   %abrick%%abrick%     %b%
echo %b%    %abrick%%abrick%    %b%
echo %b%          %b% The more lines you get in a row
echo %b%          %b% The more points you get.
echo %b%         %asbrick%%b%
echo %b%  %asbrick%      %asbrick%%b%
echo %b% %asbrick%%asbrick%%asbrick%    %asbrick%%asbrick%%b%
echo %b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%%b%
pause >nul
mode 19,23
goto main

:rocket1
mode 40,20
Title Tetris !version!
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                        !b!
echo                        !b!
echo                    O   !b!
echo                    X   !b!
echo                    X   !b!
echo                   /X\  !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                        !b!
echo                    O   !b!
echo                    X   !b!
echo                    X   !b!
echo                   /X\  !b!
echo                    V   !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O   !b!
echo                    X   !b!
echo                    X   !b!
echo                   /X\  !b!
echo                    V   !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X   !b!
echo                    X   !b!
echo                   /X\  !b!
echo                    V   !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X   !b!
echo                   /X\  !b!
echo                    V   !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\  !b!
echo                    V   !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V   !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    O
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    X
echo                    X
echo                   /X\
echo                    V 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    X
echo                   /X\
echo                    V 
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                   /X\
echo                    V 
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    V 
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo. 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 2 >NUL
mode 19,23
title 
exit/b

:rocket2
mode 40,20
Title Tetris !version!
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo. 
echo                     
echo                     U  !b!
echo                     X  !b!
echo                     X  !b!
echo                     X  !b!
echo                    /X\ !b!
echo                    IXI !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo.
echo                     
echo                     U
echo                     X  !b!
echo                     X  !b!
echo                     X  !b!
echo                    /X\ !b!
echo                    IXI !b!
echo                     W  !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo. 
echo                     
echo                     U
echo                     X
echo                     X  !b!
echo                     X  !b!
echo                    /X\ !b!
echo                    IXI !b!
echo                     W  !b!
echo                     V  !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo.
echo                     
echo                     U
echo                     X
echo                     X
echo                     X  !b!
echo                    /X\ !b!
echo                    IXI !b!
echo                     W  !b!
echo                     V  !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo. 
echo                     
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\ !b!
echo                    IXI !b!
echo                     W  !b!
echo                     V  !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo. 
echo                     
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI !b!
echo                     W  !b!
echo                     V  !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo. 
echo                     
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W  !b!
echo                     V  !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo                      
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V  !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo                     
echo                     U 
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V 
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo                     
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V 
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     U
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V 
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     X
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     X
echo                     X
echo                    /X\
echo                    IXI
echo                     W 
echo                     V 
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     X
echo                    /X\
echo                    IXI
echo                     W
echo                     V
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    /X\
echo                    IXI
echo                     W
echo                     V
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                    IXI
echo                     W 
echo                     V
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     W 
echo                     V
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                     V 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo                        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 2 >NUL
mode 19,23
title 
exit/b

:spaceshuttle
mode 40,20
Title Tetris !version!
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo                   /\
echo               !b!  /  \  !b!
echo               !b!  I  I  !b!
echo               !b! /    \ !b!
echo               !b! I    I !b!
echo               !b! I    I !b!
echo               !b! I____I !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo                   /\
echo                  /  \
echo               !b!  I  I  !b!
echo               !b! /    \ !b!
echo               !b! I    I !b!
echo               !b! I    I !b!
echo               !b! I____I !b!
echo               !b! V \/ v !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo               !b! /    \ !b!
echo               !b! I    I !b!
echo               !b! I    I !b!
echo               !b! I____I !b!
echo               !b! V \/ v !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo               !b! I    I !b!
echo               !b! I    I !b!
echo               !b! I____I !b!
echo               !b! V \/ v !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo               !b! I    I !b!
echo               !b! I____I !b!
echo               !b! V \/ v !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo               !b! I____I !b!
echo               !b! V \/ v !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo               !b! V \/ v !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo.
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                   /\
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                  /  \
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                  I  I
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls
echo                 /    \  
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls 
echo                 I    I
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls 
echo                 I    I
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls 
echo                 I____I
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls 
echo                 V \/ v
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 1 >NUL
cls 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
ECHO               !b!        !b!
echo              !c!!d!!d!!d!!d!!d!!d!!d!!d!!d!!d!!c!
echo _____________!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!!c!_____________
TIMEOUT /T 2 >NUL
mode 19,23
title 
exit/b

:error
echo error
echo Errorcode:%errorcode%
if "%errorcode%" == "1" echo input.bat is missing
if "%errorcode%" == "2" echo Internel line system broke
if "%errorcode%" == "3" echo Data.bat could not be made
if "%errorcode%" == "4" echo Score.bat could not be made
pause
exit