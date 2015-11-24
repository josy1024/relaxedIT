:: author: josef lahmer 24.11.2015


:: move folders to destination-folder-\\store\share\folderarchive/%Y/%m

exiftool.exe "-Directory<DateTimeOriginal" -d "\\store\share\folderarchive/%Y/%m"

:: move files in current directory into to a sub-directory

exiftool.exe -r "-FileName<CreateDate" -d %%d\%Y\/%Y-%m/%%f.%%e
