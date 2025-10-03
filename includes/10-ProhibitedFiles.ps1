
function Invoke-ProhibitedFiles {
    param([hashtable]$Config)

    if ($Config.Verbose) { Write-Host "[ProhibitedFiles] Starting..." -ForegroundColor Cyan }

    # Student tasks (call your task functions here)
    # Example:
    # Set-ProhibitedFiles-Setting1 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose
    # Set-ProhibitedFiles-Setting2 -Config $Config -WhatIf:$Config.WhatIf -Verbose:$Config.Verbose

    if ($Config.Verbose) { Write-Host "[ProhibitedFiles] Complete." -ForegroundColor Cyan }
}

function Set-ProhibitedFiles-Setting1 {
<#
.SYNOPSIS
First task in ProhibitedFiles.

.EXPLANATION
Describe what and why this setting matters.

.AI_PROMPT
Write PowerShell that enforces <policy> for ProhibitedFiles. Idempotent; respect -WhatIf/-Verbose; log via Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}

function Set-ProhibitedFiles-Setting2 {
<#
.SYNOPSIS
Second task in ProhibitedFiles.

.AI_PROMPT
Given a hashtable $Config, write an idempotent function to enforce <policy>. Use Write-Log.
#>
    param([hashtable]$Config, [switch]$WhatIf, [switch]$Verbose)
    # TODO
}
