use [tpch-test];
-- set the DB to use bulk-logging
-- use batchsize=5000 to improve IO throughput
bulk insert customer from 'X:\TPCH SF 1 Flatfiles\customer_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert nation from 'X:\TPCH SF 1 Flatfiles\nation_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert region from 'X:\TPCH SF 1 Flatfiles\region_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert part from 'X:\TPCH SF 1 Flatfiles\part_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert supplier from 'X:\TPCH SF 1 Flatfiles\supplier_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert partsupp from 'X:\TPCH SF 1 Flatfiles\partsupp_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert orders from 'X:\TPCH SF 1 Flatfiles\orders_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert lineitem from 'X:\TPCH SF 1 Flatfiles\lineitem_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
