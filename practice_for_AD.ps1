# add new user
New-ADUser NK

# check all user
Get-ADUser -Filter * -Properties samAccountName | select samAccountName

# add new user and put some info
New-ADUser -Name "Justin Hammer" -GivenName " Justin " -Surname " Hammer " -SamAccountName " Justin - Hammer " -AccountPassword (ConvertTo-SecureString -AsPlainText “webdir123R” -Force) -ChangePasswordAtLogon $True -Company "ABC Limited" -Title "CEO" -State "California" -City "San Francisco" -Description "Test Account Creation" -EmployeeNumber "45" -Department "Engineering" -DisplayName "Justin Hammer" -Country "US" -PostalCode "94001" -Enabled $True

# make a home directory and create a file in the path
Set-ADUser $UserName -HomeDirectory \\share\users\$UserName -HomeDrive H:
New-Item -Path "\\share\users" -Name $UserName -ItemType Directory -ErrorAction SilentlyContinue