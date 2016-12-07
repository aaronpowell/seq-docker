#require 3.0
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Push-Location $PSScriptRoot

.\seq.exe install

.\seq.exe start

Pop-Location

Read-Host 'Press any key to exit'
