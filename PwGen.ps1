$PasswordLength=0

#argument check
if(!$args)
{
    $PasswordLength=16
    }
else
{
    $PasswordLength=$args[0]
}


function Generate-Password
{
    param([int] $Length)
    
    $Result=""
    1..$Length | ForEach-Object{
    $RandomCharacter=([char]'a'..[char]'z'+[char]'A'..[char]'Z'+[char]'0'..[char]'9')|Get-Random
    $Result+=[char]$RandomCharacter 
    }|Out-Null
    return $Result
}


Write-Output(Generate-Password $PasswordLength)
