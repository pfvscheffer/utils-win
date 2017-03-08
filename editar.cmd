@echo off
set EDITOR="C:\Program Files (x86)\Notepad++\notepad++.exe"
for /f "tokens=1,2 delims=:" %%a in ("%1") do (
  set ARQUIVO=%%a
  set LINHA=%%b
)
if [%LINHA%] == [] (
  call %EDITOR% %ARQUIVO%
) else (
  call %EDITOR% %ARQUIVO% -n%LINHA%
)
