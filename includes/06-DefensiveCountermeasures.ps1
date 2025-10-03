
function Invoke-DefensiveCountermeasures {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[DefensiveCountermeasures] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-DefensiveCountermeasures-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-DefensiveCountermeasures-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[DefensiveCountermeasures] Complete." -ForegroundColor Cyan }
}

function Set-DefensiveCountermeasures-Setting1 {
<#
.SYNOPSIS
First task in DefensiveCountermeasures.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for DefensiveCountermeasures. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-DefensiveCountermeasures-Setting2 {
<#
.SYNOPSIS
Second task in DefensiveCountermeasures.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
