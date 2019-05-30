$source = "https://mirrors.estointernet.in/videolan/vlc/3.0.6/win64/vlc-3.0.6-win64.exe"
$destination = "C:\Downloads" + $source.Split('/')[-1]

Start-Process -FilePath "$destination" -ArgumentList "/S","/v","/qn" -Wait
