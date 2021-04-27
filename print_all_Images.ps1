md -Force gedruckt
magick montage *.jpg -geometry 1080x1080 -tile 1x2 -quality 85 temp.png 
magick convert temp*.png -page a4 myFile.pdf
start-process -FilePath myFile.pdf -Verb Print
Start-Sleep -s 1
mv *.jpg gedruckt\
Remove-Item temp*.png, myFile.pdf