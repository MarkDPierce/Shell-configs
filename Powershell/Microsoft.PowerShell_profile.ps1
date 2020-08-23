$ipaddress = [System.Net.DNS]::GetHostByName($null)
foreach ($ip in $ipaddress.AddressList) {
    if ($ip.AddressFamily -eq 'InterNetwork') {
        $ModernConsole_IPv4Address = $ip.IPAddressToString
        break
    }
}

$dets = @"

+=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-+
|     _   _            _                                           |
|    | | | |          | |                                          |
|    | |_| | __ _  ___| | _____ _ __ _ __ ___   __ _ _ __          |
|    |  _  |/ _` |/ __| |/ / _ \ '__| '_ ` _ \ / _` | '_ \  \         |
|    | | | | (_| | (__|   <  __/ |  | | | | | | (_| | | | |        |
|    \_| |_/\__,_|\___|_|\_\___|_|  |_| |_| |_|\__,_|_| |_|        |
|                                                                  |
|   Domain\Username  :  $env:USERDOMAIN\$env:USERNAME                      |
|   Hostname         :  $([System.Net.Dns]::GetHostEntry([string]$env:computername).HostName)                            |
|   IPv4-Address     :  $ModernConsole_IPv4Address                             |
|   PSVersion        :  "$($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor).$($PSVersionTable.PSVersion.Build).$($PSVersionTable.PSVersion.Revision)"                              |
|   Date & Time      :  $(Get-Date -Format F)         |
|                                                                  |
+=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-+

"@

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
write-host $dets -NoNewline