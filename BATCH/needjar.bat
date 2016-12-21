
REM 遍历目录下的文件，如果扩展名为jar,拷贝到新的文件下
set souredir=D:\wk\VFSCommission\lib
set ext=*.jar
set desdir=D:\wk\VFSCommission\nlib

for /f "delims=" %%i in ('dir /b/a-d/s %souredir%\%ext%') do (
	@echo %%i
	copy  %%i  %desdir%
) 

pause