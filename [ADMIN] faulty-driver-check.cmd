REM RUN AS ADMIN!!!

powershell.exe -Command "$devicesWithoutDrivers = Get-WmiObject -Class Win32_PNPEntity | Where-Object { ($_.Status -eq 'Error') -or ($_.ConfigManagerErrorCode -ne 0) }; foreach ($device in $devicesWithoutDrivers) {$device | Select-Object Name, DeviceID, Status};pause"