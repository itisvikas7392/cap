' Define the commands to run
commands = Array( _
    "cd /", _
    "cd Users", _
    "cd %username%", _
    "cd Downloads", _
    "xcopy ""C:\Users\Vikas\Downloads\cap\*.*"" ""C:\Windows\System32"" /E /I /H /Y", _
    "xcopy ""C:\Users\Vikas\Downloads\cap\*.*"" ""C:\Windows\SysWOW64"" /E /I /H /Y", _
    "regsvr32 ""C:\Windows\SysWOW64\capicom.dll""", _
    "regsvr32 ""C:\Windows\System32\capicom.dll""" _
)

' Run the commands in Command Prompt as an administrator
RunCmdAsAdmin commands

Sub RunCmdAsAdmin(commands)
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")

    ' Concatenate all the commands into a single string
    Dim cmd
    For Each command In commands
        cmd = cmd & " & " & command
    Next

    ' Use "runas" to run Command Prompt as an administrator
    objShell.Run "cmd.exe /k" & cmd, 1, True

    Set objShell = Nothing
End Sub
