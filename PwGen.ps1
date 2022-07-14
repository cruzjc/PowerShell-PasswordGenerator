$PasswordLength=16
$Result=""
1..$PasswordLength | ForEach-Object{
    $RandomCharacter=([char]'a'..[char]'z'+[char]'A'..[char]'Z'+[char]'0'..[char]'9')|Get-Random
    $Result+=[char]$RandomCharacter
}

Write-Output("Password is ",$Result)
