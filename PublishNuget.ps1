Set-Location $PSScriptRoot

Import-Module ./Powershell.Modules/BuildModule/BuildModule.psd1

$token = Get-SecureStringFromUserInput -Message "Enter github access token:" -EnvironmentVariable $env:GITHUB_TOKEN

Publish-Nuget -ProjectName "Powershell.Modules" -PackageVersion "1.0.0" -SolutionPath "." -Token $token
