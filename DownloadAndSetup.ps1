#require 3.0
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Push-Location $PSScriptRoot

Invoke-WebRequest -Uri 'https://getseq.net/Download/Begin?version=3.4.18' -OutFile 'seq-3.4.18.msi'

$unpackPath = New-Item -ItemType Directory '.unpack'

$args = @("/a", (Join-Path (Get-Location) 'seq-3.4.18.msi'), "/qb", "TARGETDIR=`"$unpackPath`"")

Start-Process -FilePath "msiexec.exe" -Wait -PassThru -ArgumentList $args

Move-Item (Join-Path (Join-Path $unpackPath 'Seq') '*') -Destination $PSScriptRoot -Force

Pop-Location
