
function Invoke-UncategorizedOS {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[UncategorizedOS] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-UncategorizedOS-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-UncategorizedOS-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[UncategorizedOS] Complete." -ForegroundColor Cyan }
}

function Set-UncategorizedOS-Setting1 {
<#
.SYNOPSIS
First task in UncategorizedOS.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for UncategorizedOS. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-UncategorizedOS-Setting2 {
<#
.SYNOPSIS
Second task in UncategorizedOS.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
