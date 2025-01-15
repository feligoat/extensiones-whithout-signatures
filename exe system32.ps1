Get-ChildItem -Recurse C:\Windows\System32\*.exe -ea SilentlyContinue| ForEach-object {Get-AuthenticodeSignature $_ -ea SilentlyContinue} | Where-Object {$_.status -ine "Valid"}|Select Status,Path