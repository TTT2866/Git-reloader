mode 40,20

::This is a sad backup because I'm lazy as hell

:start
git status
timeout /t 10
git add global.bat 
git commit -m "Commit [random number because I'm too lazy] %random% global.bat"
git push -u origin master
goto start
