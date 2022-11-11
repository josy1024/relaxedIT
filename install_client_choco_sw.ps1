#:: 1) setup chocolatey with powershell (ADMIN SHELL!!)

PS> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#:: 2) run this script to install or update

#:: set command=update
#:: update with: "cup all -y"


choco upgrade googlechrome -y
choco upgrade 7zip.install -y
choco upgrade vlc -y
choco upgrade paint.net -y
choco upgrade visualstudiocode -y
choco upgrade jre8 -y
choco upgrade gimp -y
choco upgrade sumatrapdf -y
choco upgrade googledrive -y
choco upgrade git -y
choco upgrade etcher -y
choco install libreoffice-fresh -y

# :: choco upgrade cdburnerxp -y
# choco upgrade quicktime -y
# quicktime für goprostudi
