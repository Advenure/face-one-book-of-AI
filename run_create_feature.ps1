Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
$featureDescription = Get-Content -Path "feature_description.txt" -Raw
.specify/scripts/powershell/create-new-feature.ps1 -Number 1 -ShortName "homepage-style-update" $featureDescription