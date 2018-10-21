@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "INTEXTFILE=%~1"
set "OUTTEXTFILE=c:\Temp\imagelist.txt"
set "SORTEDINTEXTFILE=c:\Temp\sortedin.txt"
set "SEARCHTEXT=%~2\"
set "REPLACETEXT="
REM sort "%INTEXTFILE%" /o "%SORTEDINTEXTFILE%"
del "%OUTTEXTFILE%"
echo %~n2:>>"%OUTTEXTFILE%"
for /f "delims=" %%A in ('type "%INTEXTFILE%"') do (
    set "string=%%A"
    set "modified=!string:%SEARCHTEXT%=%REPLACETEXT%!"
    echo   - name: !modified!>>"%OUTTEXTFILE%"
)
echo {%% include photos.html directory=page.path subdirectory="%~n2" photos=page.%~n2 %%}>>"%OUTTEXTFILE%"
REM del "%SORTEDINTEXTFILE%"
notepad %OUTTEXTFILE%
endlocal