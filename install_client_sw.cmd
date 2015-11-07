:: 1) setup chocolatey with powershell
:: chocolatey powershell scripts setup
:: iex ((new-object net.webclient).DownloadString('https://chocolatey.org/%command%.ps1'))
:: 2) run this script to install or update

:: set command=update
:: update with: "cup all -y"
set command=install

choco %command% googlechrome -y
choco %command% flashplayerplugin -y
choco %command% flashplayeractivex -y
choco %command% silverlight -y
choco %command% javaruntime -y
choco %command% notepadplusplus.%command% -y
choco %command% 7zip.%command% -y
choco %command% vlc -y
#choco %command% svn -y
choco %command% quicktime -y
# quicktime für goprostudi
choco %command% tortoisesvn -y
choco %command% paint.net -y
:: choco %command% sublimetext:: 
choco %command% visualstudiocode -y
choco %command% jre8 -y
choco %command% gimp -y
choco %command% cdburnerxp -y
choco %command% sumatrapdf -y
choco %command% googledrive -y
choco %command% git -y
