
function Invoke-UnwantedSoftware {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[UnwantedSoftware] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-UnwantedSoftware-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-UnwantedSoftware-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[UnwantedSoftware] Complete." -ForegroundColor Cyan }
}

function Set-UnwantedSoftware-Setting1 {
<#
.SYNOPSIS
First task in UnwantedSoftware.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for UnwantedSoftware. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-UnwantedSoftware-Setting2 {
<#
.SYNOPSIS
Second task in UnwantedSoftware.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
