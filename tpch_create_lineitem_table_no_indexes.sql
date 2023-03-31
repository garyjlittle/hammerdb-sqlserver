use tpch_test;
checkpoint;
create table dbo.lineitem (l_shipdate date null, l_orderkey bigint not null, l_discount money not null, l_extendedprice money not null, l_suppkey int not null, l_quantity bigint not null, l_returnflag char(1) null, l_partkey bigint not null, l_linestatus char(1) null, l_tax money not null, l_commitdate date null, l_receiptdate date null, l_shipmode char(10) null, l_linenumber bigint not null, l_shipinstruct char(25) null, l_comment varchar(44) null, index lineit_cs clustered columnstore);
