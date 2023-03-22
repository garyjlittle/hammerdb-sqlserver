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
PS C:\Program Files\HammerDB-4.2> C:\Users\Administrator\Documents\runhammerdb.ps1
Starting HammerDB run
Run 1 00:01:08.5776556 3/22/2023 9:48:19 AM
Run 2 00:01:07.4687548 3/22/2023 9:49:27 AM
Run 3 00:01:05.3722079 3/22/2023 9:50:35 AM
Run 4 00:01:08.9840419 3/22/2023 9:51:40 AM
```

