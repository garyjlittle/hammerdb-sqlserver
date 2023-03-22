
Write-Host("Starting HammerDB run")
for ($i=1 ; $i -le 4 ; $i++)
 {
    $startTime=(Get-Date)
    chdir('C:\Program Files\HammerDB-4.2')
    Start-Process 'C:\Program Files\HammerDB-4.2\hammerdbcli.bat' -ArgumentList "auto tpch_clustered_remote_run.tcl" -Wait
    $elapsedTime=(Get-Date)-$startTime
    Write-Host("Run", $i, $elapsedTime,$startTime)
  }