explain plan for select * from cp.`tpch/lineitem.parquet` where (l_shipinstruct='in-person' or l_orderkey between 5 and 10) and (l_linenumber <= 100 or linestatus = 'N');
