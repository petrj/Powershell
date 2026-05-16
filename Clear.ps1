$scriptPath = $PSScriptRoot
cd $PSScriptRoot

foreach ($folder in `
    @(
    "Powershell.Modules\bin",
    "Powershell.Modules\obj",
    ".vs"
     ))
{
    $fullPath = [System.IO.Path]::Combine($scriptPath,$folder)

    Write-Host "Clearing $folder..."

    if (-not $fullPath.EndsWith("\"))
    {
            $fullPath += "\"
    }

    if (Test-Path -Path $fullPath)
    {
	    Remove-Item -Path $fullPath -Recurse -Force
    }
}

