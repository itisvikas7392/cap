
cd /d C:\Users\%username%\Downloads
xcopy "C:\Users\%username%\Downloads\cap\*" "C:\Windows\System32\" /E /Y
xcopy "C:\Users\%username%\Downloads\cap\*" "C:\Windows\SysWOW64\" /E /Y
regsvr32 "C:\Windows\System32\capicom.dll"
regsvr32 "C:\Windows\SysWOW64\capicom.dll"
