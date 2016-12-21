REM 命令格式 goto label
REM label 表示该批处理文件新的执行点

@echo off
echo skip middle command,exe the lastest command
goto last 

dir
type a.txt

:last 
dir a.txt
pause  
 