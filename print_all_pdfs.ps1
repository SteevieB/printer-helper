$Folder = "."
$FilesToPrint = Get-ChildItem $Folder -Recurse -Include *.pdf

echo "Ordner f�r gedruckte Dateien wird erstellt"
md -Force $Folder\gedruckt
echo "Beginne mit dem Ausdrucken..."

foreach ($File in $FilesToPrint) {
    Start-Process -FilePath $File.FullName -Verb Print -PassThru | % { sleep 10; $_ } | kill
}
echo "gedruckte .pdf-Dateien werden verschoben..."
mv *.pdf $Folder\gedruckt\
Remove-Item *.pdf