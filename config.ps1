# Global configuration and helpers

$script:GV = [ordered]@{
    WhatIf = $true
    Verbose = $true
    LogPath = "$env:PUBLIC\Documents\HardeningLog.txt"

    # UserAuditing Variables
    TempPassword  = 'P@ssw0rd123!'  # demo value
    AdminRename   = 'nimda'
    GuestRename   = 'tseug'

    # AccountPolicy Variables
    MinPasswordLength            = 10
    MaxPasswordAgeDays           = 60
    MinPasswordAgeDays           = 10
    PasswordHistorySize          = 24
    PasswordComplexityEnabled    = $true
    LockoutThreshold             = 5
    LockoutDurationMinutes       = 20
    ResetLockoutCounterMinutes   = 20
    StorePasswordsUsingReversibleEncryptionEnabled = $false

    # LocalPolicy Variables
    LegalNoticeText = 'Authorized Use Only.'

}

# Optional alias so callers can just pass -Config $GV
$GV = $script:GV

# Light sanity checks (non-fatal; adjust to your class needs)
if ($GV.MinPasswordAgeDays -gt $GV.MaxPasswordAgeDays) {
    Write-Warning "MinPasswordAgeDays ($($GV.MinPasswordAgeDays)) > MaxPasswordAgeDays ($($GV.MaxPasswordAgeDays))."
}
if ($GV.MinPasswordLength -lt 1) {
    Write-Warning "MinPasswordLength should be >= 1."
}

function Write-Log {
    param(
        [string]$Msg,
        [hashtable]$Config
    )
    if (-not $Config) { return }            # quietly skip if not provided
    if (-not $Config.LogPath) { return }    # skip if no path set

    $ts = (Get-Date).ToString('s')
    $line = "$ts`t$Msg"

    $dir = Split-Path $Config.LogPath -Parent
    if (-not (Test-Path $dir)) {
        try { New-Item -ItemType Directory -Path $dir -Force | Out-Null } catch { }
    }
    Add-Content -Path $Config.LogPath -Value $line
}
