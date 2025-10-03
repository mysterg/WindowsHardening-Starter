#
function Invoke-OSUpdates {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[OSUpdates] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-OSUpdates-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-OSUpdates-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[OSUpdates] Complete." -ForegroundColor Cyan }
}

function Set-OSUpdates-Setting1 {
<#
.SYNOPSIS
First task in OSUpdates.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for OSUpdates. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-OSUpdates-Setting2 {
<#
.SYNOPSIS
Second task in OSUpdates.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
