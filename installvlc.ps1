$source = "https://mirrors.estointernet.in/videolan/vlc/3.0.6/win64/vlc-3.0.6-win64.exe"
$destination = "C:\Users\Egon\Downloads" + $source.Split('/')[-1]

#Check if software is installed. If installed terminate script

#Check if the installer is in the folder. If installer exist, replace it
 
If ((Test-Path $destination) -eq $false) {
    New-Item -ItemType File -Path $destination -Force
} 

#install software

Start-Process -FilePath "$destination" -ArgumentList "/S","/v","/qn" -Wait
