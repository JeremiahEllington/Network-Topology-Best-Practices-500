param([string]$Name)
if (-not $Name) { Write-Host 'Usage: .\\Test-Naming.ps1 -Name <candidate>'; exit 1 }
$patterns = @(
  'HQ-CORE\d+',
  'HQ-DIST-F\d+-(A|B)',
  'HQ-ACC-F\d+-\d+-\d+',
  'HQ-FW\d+',
  'HQ-EDGE\d+',
  'HQ-AP-F\d+-\d+',
  'SRV-[A-Z]{2,}-\d{2}',
  'VM-[A-Z]{2,}-[DPT]-\d{2}'
)
if ($patterns | Where-Object { $Name -match $_ }) {
  Write-Host 'Name matches a known pattern' -ForegroundColor Green
} else {
  Write-Host 'Name does NOT match known patterns' -ForegroundColor Yellow
}
