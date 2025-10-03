
function Invoke-LocalPolicy {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[LocalPolicy] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-LocalPolicy-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-LocalPolicy-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[LocalPolicy] Complete." -ForegroundColor Cyan }
}

function Set-LocalPolicy-Setting1 {
<#
.SYNOPSIS
First task in LocalPolicy.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for LocalPolicy. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-LocalPolicy-Setting2 {
<#
.SYNOPSIS
Second task in LocalPolicy.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
