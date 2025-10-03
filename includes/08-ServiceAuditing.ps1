#
function Invoke-ServiceAuditing {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[ServiceAuditing] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-ServiceAuditing-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-ServiceAuditing-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[ServiceAuditing] Complete." -ForegroundColor Cyan }
}

function Set-ServiceAuditing-Setting1 {
<#
.SYNOPSIS
First task in ServiceAuditing.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for ServiceAuditing. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-ServiceAuditing-Setting2 {
<#
.SYNOPSIS
Second task in ServiceAuditing.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
