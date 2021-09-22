First step is to list which datafiles are in the backup set
```
restore filelistonly from disk='G:\sqlserver2019-hammerdb-5k-warehouse-tpcc-singledatafile.bak';
```

Then restore the dB optionally to a new location.  This script will create a new DB called 'tpcc_single_file' using the data in the backup
```
restore database tpcc_single_file from disk='G:\sqlserver2019-hammerdb-5k-warehouse-tpcc-singledatafile.bak'
	with 
		move 'tpcc' to 'n:\tpcc_single_data.mdf',
		move 'tpcc_log' to 'n:\tpcc_single_log.ldf'
```    
