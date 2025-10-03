
function Invoke-DocumentSystem {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[DocumentSystem] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-DocumentSystem-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-DocumentSystem-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[DocumentSystem] Complete." -ForegroundColor Cyan }
}

function Set-DocumentSystem-Setting1 {
<#
.SYNOPSIS
First task in DocumentSystem.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for DocumentSystem. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-DocumentSystem-Setting2 {
<#
.SYNOPSIS
Second task in DocumentSystem.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
