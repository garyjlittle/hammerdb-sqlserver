use [tpch_test];
-- customer table
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
bulk insert customer from 'X:\TPCH SF 1000 Flatfiles\customer_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- nation table
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert nation from 'X:\TPCH SF 1000 Flatfiles\nation_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- region table
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert region from 'X:\TPCH SF 1000 Flatfiles\region_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- part table
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert part from 'X:\TPCH SF 1000 Flatfiles\part_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- supplier table
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert supplier from 'X:\TPCH SF 1000 Flatfiles\supplier_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- partsupp table
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert partsupp from 'X:\TPCH SF 1000 Flatfiles\partsupp_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- orders table
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert orders from 'X:\TPCH SF 1000 Flatfiles\orders_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);

-- lineitem
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_1.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_2.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_3.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_4.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_5.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_6.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_7.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
--bulk insert lineitem from 'X:\TPCH SF 1000 Flatfiles\lineitem_8.tbl' with (tablock, datafiletype='char', codepage='raw', fieldterminator='|', batchsize=5000);
