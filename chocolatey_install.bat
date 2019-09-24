echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo .

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

choco feature enable -n=allowGlobalConfirmation

# Browsers
choco install googlechrome
choco install firefox 

# Development
choco install elixir
choco install php
choco install python3
choco install ruby
choco install git
choco install git.install
choco install linqpad
choco install postgresql
choco install mysql
choco install docker-for-windows

# Text Editors
choco install vscode
choco install sublimetext3
choco install sublimetext3.packagecontrol
choco pin add -n vscode
choco install atom
choco install visualstudio2019community

# Utilities
choco install 7zip
choco install teamviewer
choco install 1password
choco install keepass
choco install windirstat 
choco install virtualbox 

# Entertainment
choco install slack
choco install spotify
choco install calibre

# Games
choco install hearthstone-deck-tracker
choco install battle.net
choco install steam
choco install discord

# Storage
choco install dropbox
choco install googledrive
choco install google-backup-and-sync
# choco install resilio-sync-home

pause