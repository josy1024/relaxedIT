:: 1) setup chocolatey with powershell
:: chocolatey powershell scripts setup
:: powershell  -ExecutionPolicy Bypass
:: iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
:: 2) run this script to install or update

:: set command=update
:: update with: "cup all -y"
set command=install

choco %command% googlechrome -y
choco %command% 7zip.%command% -y
choco %command% vlc -y
choco %command% quicktime -y
choco %command% paint.net -y
choco %command% visualstudiocode -y
choco %command% jre8 -y
choco %command% gimp -y
choco %command% sumatrapdf -y
choco %command% googledrive -y
choco %command% git -y
choco %command% etcher -y

:: choco %command% cdburnerxp -y
# quicktime für goprostudi
