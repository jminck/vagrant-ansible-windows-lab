Set-DNSClientServerAddress –interfaceIndex 12 –ServerAddresses ("192.168.136.101")

$domain = "mytest"
$password = "vagrant" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\vagrant" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential

start-sleep 120
