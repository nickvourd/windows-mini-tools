@echo off
rem Search a file/directory by name
rem Created with <3 by nickvourd

rem all outputs of procedure saved to file output.txt

goto :main

:searcher_dir

	echo Directories which found with keyword %name%:
	echo -------------------------------------------
	
	rem Save outputs to output.txt
	echo Directories: >> output.txt
	
	rem for llop for directories
	for /d %%i in ( *%name%* ) do (
		echo %%i
		echo %%i >> output.txt
	)
	echo. >> output.txt
	echo.
goto :eof


:searcher_file
	
	echo Files which found with keyword %name%:
	echo -------------------------------------
	
	rem Save outputs to output.txt
	echo Files: >> output.txt
	
	rem for loop for files
	for /r %%i in ( *%name%* ) do (
		echo %%i
		echo %%i >> output.txt
	)
	echo. >> output.txt
	echo.

goto :eof


rem main label
:main
	
	rem ask an input name
	echo Please give a keyword
	set /p name=
	echo.
	
	rem create output format in output.txt file:
	echo Your keyword is %name% >> output.txt
	echo ------------------------------- >> output.txt
	echo. >> output.txt
	echo Scanning started... >> output.txt
	echo. >> output.txt
	
	rem call function named searcher_dir
	call :searcher_dir
	
	rem call function named searcher_file
	call :searcher_file
	
	echo Scanning finished >> output.txt

	rem pause
	
goto :eof
