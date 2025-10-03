
function Invoke-UserAuditing {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[UserAuditing] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-UserAuditing-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-UserAuditing-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[UserAuditing] Complete." -ForegroundColor Cyan }
}

function Set-UserAuditing-Setting1 {
<#
.SYNOPSIS
First task in UserAuditing.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for UserAuditing. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-UserAuditing-Setting2 {
<#
.SYNOPSIS
Second task in UserAuditing.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
