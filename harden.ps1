
# Windows Hardening – Entry Script (Menu + Orchestration)

# --- Elevation guard ---
$IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $IsAdmin) { Write-Error "Run as Administrator."; exit 1 }

# --- Load config and includes ---
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
. (Join-Path $Root 'config.ps1')

$IncludeDir = Join-Path $Root 'includes'
Get-ChildItem $IncludeDir -Filter '*.ps1' | Sort-Object Name | ForEach-Object { . $_.FullName }

# --- Persisted state (optional) ---
$StatePath = Join-Path $Root 'state.json'
if (Test-Path $StatePath) { 
    try { $completedTasks = Get-Content $StatePath | ConvertFrom-Json } catch { $completedTasks = @{} }
} else { $completedTasks = @{} }

function Save-State { param($State) $State | ConvertTo-Json | Set-Content -Path $StatePath -Encoding UTF8 }

# --- Menu helpers ---
function Write-MenuItem {
    param([int]$Number, [string]$Text, [bool]$Executed)
    $color = if ($Executed) { 'Green' } else { 'White' }
    Write-Host ("{0}. {1}" -f $Number, $Text) -ForegroundColor $color
}

# --- App Security submenu (delegates to include-defined secure functions) ---
function Show-AppSecurityMenu {
    param([hashtable]$Config)

    while ($true) {
        Write-Host "`nApplication Security Menu" -ForegroundColor Cyan
        Write-MenuItem 1 "Secure Firefox" ($completedTasks['app1'])
        Write-MenuItem 2 "Secure Chrome"  ($completedTasks['app2'])
        Write-MenuItem 3 "Secure RDP"     ($completedTasks['app3'])
        Write-MenuItem 4 "Secure SMB"     ($completedTasks['app4'])
        Write-MenuItem 5 "Secure DNS"     ($completedTasks['app5'])
        Write-MenuItem 6 "Secure SSH"     ($completedTasks['app6'])
        Write-MenuItem 7 "Secure IIS"     ($completedTasks['app7'])
        Write-MenuItem 8 "Return to Main Menu" $false

        $appChoice = Read-Host "`nPlease enter your choice"
        switch ($appChoice) {
            '1' { Secure-Firefox -Config $Config; $completedTasks['app1'] = $true }
            '2' { Secure-Chrome  -Config $Config; $completedTasks['app2'] = $true }
            '3' { Secure-RDP     -Config $Config; $completedTasks['app3'] = $true }
            '4' { Secure-SMB     -Config $Config; $completedTasks['app4'] = $true }
            '5' { Secure-DNS     -Config $Config; $completedTasks['app5'] = $true }
            '6' { Secure-SSH     -Config $Config; $completedTasks['app6'] = $true }
            '7' { Secure-IIS     -Config $Config; $completedTasks['app7'] = $true }
            '8' { return }
            default { Write-Host "Invalid option." -ForegroundColor Red }
        }
        Save-State $completedTasks
    }
}

# --- Main menu loop ---
while ($true) {
    Write-Host "`nSecurity Hardening Script Menu" -ForegroundColor Cyan
    Write-MenuItem 1  "Document System"                 ($completedTasks['1'])
    Write-MenuItem 2  "OS Updates"                      ($completedTasks['2'])
    Write-MenuItem 3  "User Auditing"                   ($completedTasks['3'])
    Write-MenuItem 4  "Account Policy"                  ($completedTasks['4'])
    Write-MenuItem 5  "Local Policy"                    ($completedTasks['5'])
    Write-MenuItem 6  "Defensive Countermeasures"       ($completedTasks['6'])
    Write-MenuItem 7  "Uncategorized OS Settings"       ($completedTasks['7'])
    Write-MenuItem 8  "Service Auditing"                ($completedTasks['8'])
    Write-MenuItem 9  "Application Updates"             ($completedTasks['9'])
    Write-MenuItem 10 "Prohibited Files"                ($completedTasks['10'])
    Write-MenuItem 11 "Unwanted Software"               ($completedTasks['11'])
    Write-MenuItem 12 "Malware"                         ($completedTasks['12'])
    Write-MenuItem 13 "Application Security (submenu)"  ($completedTasks['13'])
    Write-MenuItem 14 "Exit"                            $false

    $choice = Read-Host "`nPlease enter your choice"
    switch ($choice) {
        '1'  { Invoke-DocumentSystem      -Config $GV; $completedTasks['1']  = $true }
        '2'  { Invoke-OSUpdates           -Config $GV; $completedTasks['2']  = $true }
        '3'  { Invoke-UserAuditing        -Config $GV; $completedTasks['3']  = $true }
        '4'  { Invoke-AccountPolicy       -Config $GV; $completedTasks['4']  = $true }
        '5'  { Invoke-LocalPolicy         -Config $GV; $completedTasks['5']  = $true }
        '6'  { Invoke-DefensiveCountermeasures -Config $GV; $completedTasks['6'] = $true }
        '7'  { Invoke-UncategorizedOS     -Config $GV; $completedTasks['7']  = $true }
        '8'  { Invoke-ServiceAuditing     -Config $GV; $completedTasks['8']  = $true }
        '9'  { Invoke-ApplicationUpdates  -Config $GV; $completedTasks['9']  = $true }
        '10' { Invoke-ProhibitedFiles     -Config $GV; $completedTasks['10'] = $true }
        '11' { Invoke-UnwantedSoftware    -Config $GV; $completedTasks['11'] = $true }
        '12' { Invoke-Malware             -Config $GV; $completedTasks['12'] = $true }
        '13' { Show-AppSecurityMenu       -Config $GV; $completedTasks['13'] = $true }
        '14' { Save-State $completedTasks; break }
        default { Write-Host "Invalid option." -ForegroundColor Red }
    }
    Save-State $completedTasks
}
