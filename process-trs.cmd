

FOR /F %%f IN ('dir /b *.trs') DO call :convert %%f

goto :eof

:convert
set infile=%~1
set outfile=%infile:.trs=.txt%
java -jar "saxon9he.jar" -o:"%outfile%" "%infile%" "SAB-timingfile-from-transscriber.xslt" 
@echo %infile% converted to %outfile%
goto :eof