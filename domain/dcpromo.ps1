Install-WindowsFeature -Name AD-Domain-Services
$SafeModeAdministratorPassword = ConvertTo-SecureString "P@ssW0rD1!" -AsPlainText -Force

#
# Windows PowerShell script for AD DS Deployment
#
Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012" `
-DomainName "mytest.com" `
-DomainNetbiosName "MYTEST" `
-ForestMode "Win2012" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true `
-SafeModeAdministratorPassword $SafeModeAdministratorPassword