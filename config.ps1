
# Global configuration and helpers

$script:GV = [ordered]@{
    WhatIf = $true
    Verbose = $true
    LogPath = "$env:PUBLIC\Documents\HardeningLog.txt"

    # Example knobs (extend as needed)
    MinPasswordLength  = 14
    MaxPasswordAgeDays = 60
    LockoutThreshold   = 5
    EnforceFirewall    = $true
    RdpAllowed         = $false
}

function Write-Log {
    param([string]$Msg, [hashtable]$Config)
    $ts = (Get-Date).ToString('s')
    $line = "$ts`t$Msg"
    $dir = Split-Path $Config.LogPath -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }
    Add-Content -Path $Config.LogPath -Value $line
}
