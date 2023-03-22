# Take parameter from CLI
$HDBFileName=$args[0]

if ($HDBFileName -eq $null) {
    Write-Host "Need a HammerDB config file as first param"
    exit
}
if (-not(Test-Path $HDBFileName)) {
    Write-Host "File Not Found"
    exit
    }

Write-Host("Starting HammerDB run for config $HDBFileName")
for ($i=1 ; $i -le 4 ; $i++) 
 {
    $startTime=(Get-Date)
    chdir('C:\Program Files\HammerDB-4.2')
    Start-Process 'C:\Program Files\HammerDB-4.2\hammerdbcli.bat' -ArgumentList "auto $HDBFileName" -Wait
    $elapsedTime=(Get-Date)-$startTime
    Write-Host("Run", $i, $elapsedTime,$startTime)
  }
