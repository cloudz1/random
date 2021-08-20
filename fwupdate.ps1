$IP = Read-Host -Prompt 'Input your IP range (eg 192.168.11.1/24)'
write-output $IP]
$check = Read-Host -Prompt "Is this the correct IP?"
if ($check -eq 'y') {
	(Get-Content -Path .\importfw.txt) |
		ForEach-Object {$_ -Replace 'ip_holder', $IP} |
	Set-Content -Path .\importfw.txt
Get-Content -Path .\importfw.txt
}
else{
	break
}
pause
