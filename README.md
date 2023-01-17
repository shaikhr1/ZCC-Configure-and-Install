# ZCC-Configure-and-Install
The script first defines the tenant, username, and password for the Zscaler service. It then runs the installer for the Zscaler client and configures it with the provided tenant and user credentials using the Zscaler COM wrapper.

The script first defines the tenant, username, and password for the Zscaler service using the following lines of code:

$tenant = "mytenant"
$username = "myusername"
$password = "mypassword"

You will need to replace mytenant, myusername, and mypassword with the actual values for your Zscaler tenant and user account.

Next, the script runs the installer for the Zscaler client using the following line of code:

Invoke-Expression (Get-Content "path\to\installer.exe" -Raw)
You will need to replace path\to\installer.exe with the actual path where the Zscaler client installer is located on your system.

After the installation, the script creates a new instance of the Zscaler COM wrapper object using the following line of code:

$zscaler = New-Object -ComObject "Zscaler.ZscalerComWrapper"
Finally, the script uses the created object to configure the Zscaler client with the tenant and user credentials using the following line of code:

$zscaler.SetUpZscalerService($tenant, $username, $password)
This will configure the Zscaler client with the tenant and user credentials provided, allowing it to establish a secure connection to the Zscaler service.

Once the script is executed successfully, the endpoint device will be configured to connect to the Zscaler service using the provided tenant and user credentials.
Please test the script in a non-production environment before running it in production.
