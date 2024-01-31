# Powershell Driver Utility

**ALL SCRIPTS NEED TO RUN WITH ADMIN PRIVILEGES!**

Scritps to identify faulty or missing drivers and to install new drivers using PNPUtil.

## ``faulty-driver-check``
This script identifies faulty or missing drivers on your system.
It then displays their name device ID and status for further troubleshootig.

## ``install-drivers``
This script installs drivers (using their ``*.inf`` files) from a specified directory.
It also opens a device manager window so you can monitor your progress visually aswell as from the CLI.

When the script is done going through all found ``*.inf`` it will display some ASCII art saying "Done!"