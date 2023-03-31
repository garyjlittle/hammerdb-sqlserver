create index l_shipdate_ind on dbo.lineitem(l_shipdate) with (fillfactor=95, sort_in_tempdb=off, maxdop=16);
create index l_orderkey_ind on dbo.lineitem(l_orderkey) with ( fillfactor=95, sort_in_tempdb=on, maxdop=16);
create index l_partkey_ind on dbo.lineitem(l_partkey) with (fillfactor=95, sort_in_tempdb=on, maxdop=16);

alter table dbo.lineitem with nocheck add  constraint lineitem_order_fk foreign key(l_orderkey) references dbo.orders (o_orderkey);
alter table dbo.lineitem with nocheck add constraint lineitem_partkey_fk foreign key (l_partkey) references dbo.part(p_partkey);
alter table dbo.lineitem with nocheck add constraint lineitem_suppkey_fk foreign key (l_suppkey) references dbo.supplier(s_suppkey);
alter table dbo.lineitem with nocheck add  constraint lineitem_partsupp_fk foreign key(l_partkey,l_suppkey) references partsupp(ps_partkey, ps_suppkey);

alter table dbo.lineitem check constraint lineitem_order_fk;
alter table dbo.lineitem check constraint lineitem_partkey_fk;
alter table dbo.lineitem check constraint lineitem_suppkey_fk;
alter table dbo.lineitem check constraint lineitem_partsupp_fk;

