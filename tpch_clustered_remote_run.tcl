dbset db mssqls
dbset bm tpc-h
diset connection mssqls_server 10.57.16.42
diset tpch mssqls_scale_fact         1
diset tpch mssqls_maxdop             16
diset tpch mssqls_tpch_dbase         tpch_non_clustered_100
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

