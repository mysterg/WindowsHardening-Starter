
function Invoke-AccountPolicy {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[AccountPolicy] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-AccountPolicy-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-AccountPolicy-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[AccountPolicy] Complete." -ForegroundColor Cyan }
}

function Set-AccountPolicy-Setting1 {
<#
.SYNOPSIS
First task in AccountPolicy.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for AccountPolicy. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-AccountPolicy-Setting2 {
<#
.SYNOPSIS
Second task in AccountPolicy.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
