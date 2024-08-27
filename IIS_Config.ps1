# This file sets up a windows server on a running vm and adds a default file with value on it
# PURPOSE - to test vms
import-module servermanager
add-windowsfeature web-server -includeallsubfeature
add-windowsfeature Web-Asp-Net45
add-windowsfeature NET-Framework-Features
Set-Content -Path "C:\inetpub\wwwroot\Default.html" -Value "This is the server $($env:computername)"
