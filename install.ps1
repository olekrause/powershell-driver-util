#Same script as in "[ADMIN] install-drivers.cmd" just in multiline

Get-ChildItem 'C:\[DRIVER LOCATION]' -Recurse -Filter '*.inf' | ForEach-Object {
    PNPUtil.exe /add-driver $_.FullName /install
}
Clear-Host
Get-Content 'D:\done.txt'