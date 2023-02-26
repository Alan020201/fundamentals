@echo off


set source=C:\ImportantFiles
set destination=D:\Backup


set schedule=22:00


if %time% == %schedule% (

   
    if not exist %destination% mkdir %destination%

  
    xcopy %source% %destination% /s /e /c /i /h /r /y
    echo Backup complete at %time%
)

