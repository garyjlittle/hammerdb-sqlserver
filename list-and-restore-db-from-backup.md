First step is to list which datafiles are in the backup set
* For a single file
```
restore filelistonly from disk='G:\sqlserver2019-hammerdb-1k-warehouse-tpcc-singledatafile.bak';
```
* For a multi-file backup set
```
restore filelistonly from disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT1.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT2.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT3.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT4.bak';
```
Then restore the dB optionally to a new location.  This script will create a new DB called 'tpcc_single_file' using the data in the backup
* Single-part backup file restore
```
restore database tpcc_single_file from disk='G:\sqlserver2019-hammerdb-1k-warehouse-tpcc-singledatafile.bak'
	with 
		move 'tpcc' to 'n:\tpcc_single_data.mdf',
		move 'tpcc_log' to 'n:\tpcc_single_log.ldf'
```    
* Multi-part  backup file restore
```
restore database tpcc_sigle_initial_restore from disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT1.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT2.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT3.bak',
disk='O:\sql-server-2019-tpcc-1k-singledisk-warehouse-initial-load-PT4.bak'
with 
		move 'tpcc' to 'o:\tpcc_single_data.mdf',
		move 'tpcc_log' to 'o:\tpcc_single_log.ldf'
```		
