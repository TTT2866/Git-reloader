mode 40,20
if not exist linenumber.txt echo 0 >linenumber.txt
set /p linenumber=<linenumber.txt
set /a linenumber=%linenumber%+1
del linenumber.txt
echo %linenumber% >linenumber.txt


:start
git status
timeout /t 10
git add global.bat 
git commit -m "Commit %linenumber% global.bat"
git push -u origin master
goto start
