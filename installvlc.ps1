md c:\NewFolder

$url = "https://mirrors.estointernet.in/videolan/vlc/3.0.6/win64/vlc-3.0.6-win64.exe"
$output = "C:\NewFolder\vlc-3.0.6-win64.exe"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

Start-Process -Wait -FilePath 'C:\NewFolder\vlc-3.0.6-win64.exe' -ArgumentList '/S' -PassThru 

add-computer –domainname ezpoc.net -Credential ezpoc\Abhijeet -restart –force