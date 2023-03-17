-- clustered db
use [tpch-test];
create table dbo.customer (c_custkey bigint not null, c_mktsegment char(10) null, c_nationkey int null, c_name varchar(25) null, c_address varchar(40) null, c_phone char(15) null, c_acctbal money null, c_comment varchar(118) null, index cust_cs clustered columnstore);
create table dbo.lineitem (l_shipdate date null, l_orderkey bigint not null, l_discount money not null, l_extendedprice money not null, l_suppkey int not null, l_quantity bigint not null, l_returnflag char(1) null, l_partkey bigint not null, l_linestatus char(1) null, l_tax money not null, l_commitdate date null, l_receiptdate date null, l_shipmode char(10) null, l_linenumber bigint not null, l_shipinstruct char(25) null, l_comment varchar(44) null, index lineit_cs clustered columnstore);
create table dbo.nation(n_nationkey int not null, n_name char(25) null, n_regionkey int null, n_comment varchar(152) null, index nation_cs clustered columnstore);
create table dbo.part( p_partkey bigint not null, p_type varchar(25) null, p_size int null, p_brand char(10) null, p_name varchar(55) null, p_container char(10) null, p_mfgr char(25) null, p_retailprice money null, p_comment varchar(23) null, index part_cs clustered columnstore);
create table dbo.partsupp( ps_partkey bigint not null, ps_suppkey int not null, ps_supplycost money not null, ps_availqty int null, ps_comment varchar(199) null, index psupp_cs clustered columnstore);
create table dbo.region(r_regionkey int not null, r_name char(25) null, r_comment varchar(152) null, index region_cs clustered columnstore);
create table dbo.supplier( s_suppkey int not null, s_nationkey int null, s_comment varchar(102) null, s_name char(25) null, s_address varchar(40) null, s_phone char(15) null, s_acctbal money null, index suppl_cs clustered columnstore);
create table dbo.orders( o_orderdate date null, o_orderkey bigint not null, o_custkey bigint not null, o_orderpriority char(15) null, o_shippriority int null, o_clerk char(15) null, o_orderstatus char(1) null, o_totalprice money null, o_comment varchar(79) null, index ord_cs clustered columnstore);
-- indexes
create unique index nation_pk on dbo.nation(n_nationkey);
create unique index region_pk on dbo.region(r_regionkey);
create unique index customer_pk on dbo.customer(c_custkey) with (maxdop=16);
create unique index part_pk on dbo.part(p_partkey) with (maxdop=16);
create unique index partsupp_pk on dbo.partsupp(ps_partkey, ps_suppkey) with (maxdop=16);
create unique index supplier_pk on dbo.supplier(s_suppkey) with (maxdop=16);
create index o_orderdate_ind on orders(o_orderdate) with (fillfactor=95, sort_in_tempdb=on, maxdop=16);
create unique index orders_pk on dbo.orders(o_orderkey) with (fillfactor = 95, maxdop=16);
create index n_regionkey_ind on dbo.nation(n_regionkey) with (fillfactor=100, sort_in_tempdb=on, maxdop=16);
create index ps_suppkey_ind on dbo.partsupp(ps_suppkey) with(fillfactor=100, sort_in_tempdb=on, maxdop=16);
create index s_nationkey_ind on dbo.supplier(s_nationkey) with (fillfactor=100, sort_in_tempdb=on, maxdop=16);
create index l_shipdate_ind on dbo.lineitem(l_shipdate) with (fillfactor=95, sort_in_tempdb=off, maxdop=16);
create index l_orderkey_ind on dbo.lineitem(l_orderkey) with ( fillfactor=95, sort_in_tempdb=on, maxdop=16);
create index l_partkey_ind on dbo.lineitem(l_partkey) with (fillfactor=95, sort_in_tempdb=on, maxdop=16);

-- constraints

alter table dbo.customer with nocheck add  constraint customer_nation_fk foreign key(c_nationkey) references dbo.nation (n_nationkey);
alter table dbo.lineitem with nocheck add  constraint lineitem_order_fk foreign key(l_orderkey) references dbo.orders (o_orderkey);
alter table dbo.lineitem with nocheck add constraint lineitem_partkey_fk foreign key (l_partkey) references dbo.part(p_partkey);
alter table dbo.lineitem with nocheck add constraint lineitem_suppkey_fk foreign key (l_suppkey) references dbo.supplier(s_suppkey);
alter table dbo.lineitem with nocheck add  constraint lineitem_partsupp_fk foreign key(l_partkey,l_suppkey) references partsupp(ps_partkey, ps_suppkey);
alter table dbo.nation  with nocheck add  constraint nation_region_fk foreign key(n_regionkey) references dbo.region (r_regionkey);
alter table dbo.partsupp  with nocheck add  constraint partsupp_part_fk foreign key(ps_partkey) references dbo.part (p_partkey);
alter table dbo.partsupp  with nocheck add  constraint partsupp_supplier_fk foreign key(ps_suppkey) references dbo.supplier (s_suppkey);
alter table dbo.supplier  with nocheck add  constraint supplier_nation_fk foreign key(s_nationkey) references dbo.nation (n_nationkey);
alter table dbo.orders  with nocheck add  constraint order_customer_fk foreign key(o_custkey) references dbo.customer (c_custkey);
alter table dbo.customer check constraint customer_nation_fk;
alter table dbo.lineitem check constraint lineitem_order_fk;
alter table dbo.lineitem check constraint lineitem_partkey_fk;
alter table dbo.lineitem check constraint lineitem_suppkey_fk;
alter table dbo.lineitem check constraint lineitem_partsupp_fk;
alter table dbo.nation check constraint nation_region_fk;
alter table dbo.partsupp check constraint partsupp_part_fk;
alter table dbo.partsupp check constraint partsupp_part_fk;
alter table dbo.supplier check constraint supplier_nation_fk;
alter table dbo.orders check constraint order_customer_fk;

