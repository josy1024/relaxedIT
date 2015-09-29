:: 1) setup chocolatey with powershell
:: chocolatey powershell scripts setup
:: iex ((new-object net.webclient).DownloadString('https://chocolatey.org/%command%.ps1'))
:: 2) run this script to install or update

:: set command=update
set command=install

choco %command% googlechrome
choco %command% flashplayerplugin
choco %command% flashplayeractivex
choco %command% silverlight
choco %command% javaruntime
choco %command% notepadplusplus.%command%
choco %command% 7zip.%command%
choco %command% vlc
#choco %command% svn
choco %command% tortoisesvn
choco %command% paint.net
:: choco %command% sublimetext:: 
choco %command% visualstudiocode
choco %command% jre8
choco %command% gimp
choco %command% cdburnerxp
choco %command% sumatrapdf
choco %command% googledrive
choco %command% git
