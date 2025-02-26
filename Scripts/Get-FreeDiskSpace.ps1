<#

.SYNOPSIS

Get number of gigabytes free from C drive.

.EXAMPLE

PS > Get-FreeDiskSpace -DriveLetter 'C'

#>

param (
    $DriveLetter = 'C'
)

$SizeRemaining = Get-Volume -DriveLetter $DriveLetter | Select-Object -ExpandProperty SizeRemaining
$SizeRemaining = [math]::Round($SizeRemaining / 1GB)

return $SizeRemaining


