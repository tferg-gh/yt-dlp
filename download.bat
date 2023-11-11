@echo off
set /p userurl=Enter the URL: 

rem Check if the user entered a URL
if "%userurl%"=="" (
    echo You did not enter a URL. Exiting.
    exit /b 1
)

rem Download 1080p mp4 video
yt-dlp.exe -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" -S "res:1080" %userurl%

pause