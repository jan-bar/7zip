:: .\build.bat D:\ProgramFiles\VisualStudio\Product\VC\Auxiliary\Build\vcvars64.bat
:: del /S /Q *.obj *.exe *.lib *.res
:: regsvr32 /u "c:\Program Files\7-Zip\7-zip.dll"

call %1%
nmake CPU=AMD64 NEW_COMPILER=1 MY_STATIC_LINK=1
if errorlevel 1 exit /b %errorlevel%

if not exist .\dist\x64 mkdir .\dist\x64

copy /Y .\UI\Console\x64\7z.exe .\dist\x64\ >nul
copy /Y .\Bundles\Format7zF\x64\7z.dll .\dist\x64\ >nul
copy /Y .\UI\GUI\x64\7zG.exe .\dist\x64\ >nul
copy /Y .\UI\FileManager\x64\7zFM.exe .\dist\x64\ >nul
copy /Y .\UI\Explorer\x64\7-zip.dll .\dist\x64\ >nul
copy /Y .\Bundles\SFXWin\x64\7z.sfx .\dist\x64\ >nul
copy /Y .\Bundles\SFXCon\x64\7zCon.sfx .\dist\x64\ >nul
copy /Y .\Bundles\Alone\x64\7za.exe .\dist\x64\ >nul
copy /Y .\Bundles\Alone2\x64\7zz.exe .\dist\x64\ >nul
