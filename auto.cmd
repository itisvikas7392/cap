 
cd/
cd Users
cd %username%
cd Downloads
xcopy "C:\Users\Vikas\Downloads\cap" "C:\Windows\System32"
xcopy "C:\Users\Vikas\Downloads\cap\" "C:\Windows\SysWOW64"
regsvr32 "C:\Windows\SysWOW64\capicom.dll"
regsvr32 "C:\Windows\System32\capicom.dll"