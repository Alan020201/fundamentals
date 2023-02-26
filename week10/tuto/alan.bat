@echo off

:: Define the source and destination directories
set source=C:\ImportantFiles
set destination=D:\Backup

:: Define the date and time for the scheduled backup
set schedule=22:00

:: Check if the current time matches the scheduled time
if %time% == %schedule% (

    :: Create the destination directory if it doesn't exist
    if not exist %destination% mkdir %destination%

    :: Use the xcopy command to copy the files and folders
    xcopy %source% %destination% /s /e /c /i /h /r /y
    echo Backup complete at %time%
)
