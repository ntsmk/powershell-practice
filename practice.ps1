$name = "nk"
Write-Host $name

function New-RandomPassword {
    param (
        [Parameter(Mandatory=$true)]
        [int]$Length,
        [string]$Characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}|;:,.<>?'
    )
     
    $password = -join (1..$length | ForEach-Object { Get-Random -InputObject $characters.ToCharArray() })
    return $password
}
 
$Password = New-RandomPassword -Length 5 -Characters "abcdefghijklmnopqrstuvwxyz"
Write-host $Password