:: author: josef lahmer 24.11.2015

:: http://josy1024.blogspot.co.at/2015/10/exif-tool-oranizer-ordner-nach-jahr-und.html
:: exiftool from: http://www.sno.phy.queensu.ca/~phil/exiftool/exiftool-10.05.zip

:: move folders to destination-folder-\\store\share\folderarchive/%Y/%m

exiftool.exe "-Directory<DateTimeOriginal" -d "\\store\share\folderarchive/%Y/%m"


:: move files in current directory into to a sub-directory
:: ABLAGE\JAHR\JAHR-MONAT\bilder
exiftool.exe -r "-FileName<CreateDate" -d %%d\%Y\/%Y-%m/%%f.%%e

:: ABLAGE\JAHR\MONAT\bilder
exiftool.exe -r "-FileName<CreateDate" -d %%d\%Y\/%m/%%f.%%e
