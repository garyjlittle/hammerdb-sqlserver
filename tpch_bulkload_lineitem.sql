use [tpch-test];
-- insert lineitem.
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|');
