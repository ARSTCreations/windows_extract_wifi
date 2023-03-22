$filename = "wifipasswd_$($Env:COMPUTERNAME)_$((Get-Date).ToString('yyyyMMddhhmmss')).txt"
(Get-WmiObject -Class "Win32_NetworkAdapterConfiguration" | Where-Object { $_.IPEnabled -eq $true }).ForEach({
    $profiles = (netsh -c "wlan show profiles" -Interface $_.Caption | Select-String "All User Profile\s+:\s+(.*)$" | ForEach-Object { $_.Matches.Groups[1].Value })
    $profiles.ForEach({
        $password = (netsh -c "wlan show profile name=`"$($_)`" key=clear" -Interface $_ | Select-String "Key Content\s+:\s+(.*)$" | ForEach-Object { $_.Matches.Groups[1].Value })
        if ($password) {
            "$_ : $password"
        }
    })
}) | Out-File $filename
