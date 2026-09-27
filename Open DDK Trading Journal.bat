@echo off
setlocal
set "APP=%~dp0DDKs-Trading-Journal.html"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" (
  start "DDK Trading Journal" "%EDGE%" --app="file:///%APP:/=/%"
  exit /b
)
set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" (
  start "DDK Trading Journal" "%CHROME%" --app="file:///%APP:/=/%"
  exit /b
)
start "" "%APP%"
