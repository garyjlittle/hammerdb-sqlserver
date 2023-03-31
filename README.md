# hammerdb-sqlserver
HammerDB SQL Server scripts and notes

## Creating and populating a TPC-H Database - manually using flat-files

Set the DB options to "bulk_logging" - this option together with the "batchsize=5000" directive on the bulk-load line gives a 2x speedup.

1.  [Create the physical database files](https://github.com/garyjlittle/hammerdb-sqlserver/blob/b08fbeae8385193a6d95cb2c6fd5b1cc99bd2b12/tpch-1-create-db.sql)
2.  [Create tables, indexes and constraints](https://github.com/garyjlittle/hammerdb-sqlserver/blob/14ee0122beb70d3a6d987c76096cd96ff7f4471c/tpch-2-create-clustered-tables_index_constraints.sql)
3.  [Bulk load the database from flat files (single file per table)](https://github.com/garyjlittle/hammerdb-sqlserver/blob/cb8adcd7740d44fb0a79e645285538bf350e9e38/tpch_3_bulkload_all.sql)
- OR - 
3. [Bulk load the database from flat files (multiple files per table)](https://github.com/garyjlittle/hammerdb-sqlserver/blob/a1a73d07cdd64fe553f9770860eb9bcdb83c0462/tpch-3a-bulkload-all-multifile.sql)


## Running TPCH from CLI using powershell
To repeat TPCH several times and get output of the runtime - use the `runhammerdb.ps1` script.  Its output looks like this
```
C:\Users\Administrator\Documents\runhammerdb.ps1 .\tpch_non_clustered_100.tcl ; C:\Users\Administrator\Documents\runhammerdb.ps1 .\tpch_clustered_100.tcl

Starting HammerDB run for config .\tpch_non_clustered_100.tcl
Run 1 00:01:20.0874835 3/22/2023 12:37:14 PM
Run 2 00:01:06.0735787 3/22/2023 12:38:34 PM
Run 3 00:01:20.0876020 3/22/2023 12:39:40 PM
Run 4 00:01:20.0869302 3/22/2023 12:41:00 PM

Starting HammerDB run for config .\tpch_clustered_100.tcl
Run 1 00:01:04.0709585 3/22/2023 12:42:20 PM
Run 2 00:01:10.0789376 3/22/2023 12:43:24 PM
Run 3 00:01:06.1586989 3/22/2023 12:44:35 PM
Run 4 00:01:09.7613099 3/22/2023 12:45:41 PM
```
#### scripts
The powershell script looks like this below - it calls hammerdb with the `auto` parameter and the nane of the `tcl` script that describes the DB and workload `tpch_clustered_remote_run.tcl`

##### powershell (runhammerdb.ps1)
```
Write-Host("Starting HammerDB run")
for ($i=1 ; $i -le 4 ; $i++)
 {
    $startTime=(Get-Date)
    chdir('C:\Program Files\HammerDB-4.2')
    Start-Process 'C:\Program Files\HammerDB-4.2\hammerdbcli.bat' -ArgumentList "auto tpch_clustered_remote_run.tcl" -Wait
    $elapsedTime=(Get-Date)-$startTime
    Write-Host("Run", $i, $elapsedTime,$startTime)
  }
```  
##### tcl  (tpch_clustered_remote_run.tcl)
```
dbset db mssqls
dbset bm tpc-h
diset connection mssqls_server 10.57.16.42
diset tpch mssqls_scale_fact         100
diset tpch mssqls_maxdop             16
diset tpch mssqls_tpch_dbase         tpch_clustered_100
diset tpch mssqls_num_tpch_threads   1
diset tpch mssqls_colstore           false
diset tpch mssqls_total_querysets    1
diset tpch mssqls_raise_query_error  false
diset tpch mssqls_verbose            false
diset tpch mssqls_refresh_on         false
diset tpch mssqls_update_sets        1
diset tpch mssqls_trickle_refresh    1000
diset tpch mssqls_refresh_verbose    false
loadscript
vuset vu 1
vuset logtotemp 1
vuset unique 1
vucreate
vurun
runtimer 60
vudestroy
```
