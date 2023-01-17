# Define the Zscaler tenant and user credentials
$tenant = "mytenant"
$username = "myusername"
$password = "mypassword"

# Install the Zscaler client
Invoke-Expression (Get-Content "path\to\installer.exe" -Raw)

# Configure the Zscaler client with the tenant and user credentials
$zscaler = New-Object -ComObject "Zscaler.ZscalerComWrapper"
$zscaler.SetUpZscalerService($tenant, $username, $password)
