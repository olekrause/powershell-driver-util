#Same script as in "[ADMIN] faulty-driver-check.cmd" just in multiline

$devicesWithoutDrivers = Get-WmiObject -Class Win32_PNPEntity | Where-Object { ($_.Status -eq "Error") -or ($_.ConfigManagerErrorCode -ne 0) }

foreach ($device in $devicesWithoutDrivers) {
    $device | Select-Object Name, DeviceID, Status
}