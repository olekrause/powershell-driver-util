REM RUN AS ADMIN!!!

REM Opens the device manager to check progress
devmgmt.msc

REM Checks directory where drivers are (hopefully stored) and installs each driver with PNPUtil. When done it displays text "Done!"
powershell.exe -Command "Get-ChildItem 'C:\[DRIVER LOCATION]' -Recurse -Filter '*.inf' | ForEach-Object { PNPUtil.exe /add-driver $_.FullName /install }; clear; Get-Content 'D:\done.txt'"

pause
