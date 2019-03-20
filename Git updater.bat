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

::I call my file global.bat for another project, you will have to change this to suit your program. Have it as any of these
::git add . 
::git add --all
::git add -A

::git commit -m "Commit %linenumber% file.whatever"

git push -u origin master
goto start
