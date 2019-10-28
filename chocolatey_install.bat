echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo .

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

choco feature enable -n=allowGlobalConfirmation -y

REM # Browsers
choco install googlechrome
REM choco install firefox 

# Development
choco install elixir
REM choco install php
REM choco install python3
REM choco install ruby
choco install git
choco install git.install
REM choco install linqpad
choco install postgresql
REM choco install mysql
REM choco install docker-for-windows

# Text Editors
choco install vscode
REM choco install sublimetext3
REM choco install sublimetext3.packagecontrol
REM choco pin add -n vscode
REM choco install atom
REM choco install visualstudio2019community

# Utilities
REM choco install 7zip
REM choco install teamviewer
choco install 1password
REM choco install keepass
choco install windirstat 
REM choco install virtualbox 

# Entertainment
choco install slack
REM choco install spotify
REM choco install calibre

# Games
REM choco install hearthstone-deck-tracker
choco install battle.net
choco install steam
REM choco install discord

REM # Storage
REM choco install dropbox
REM choco install googledrive
choco install google-backup-and-sync
REM # choco install resilio-sync-home

pause