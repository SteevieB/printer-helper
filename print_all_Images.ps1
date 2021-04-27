#magick montage *.jpg -density 600 -format "%[papersize:a4]" -background white -page A4 -gravity center -compress Zip -alpha off -geometry 1080x1080 -tile 1x2 -units PixelsPerInch -adjoin -quality 100 myFile.pdf
#magick convert myFile.pdf -page A4 myFile.pdf
md -Force gedruckt
magick montage *.jpg -geometry 1080x1080 -tile 1x2 -quality 85 temp.png 
magick convert temp*.png -page a4 myFile.pdf
start-process -FilePath myFile.pdf -Verb Print
Start-Sleep -s 1
mv *.jpg gedruckt\
Remove-Item temp*.png,myFile.pdf