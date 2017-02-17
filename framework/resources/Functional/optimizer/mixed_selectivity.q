explain plan for select * from cp.`tpch/lineitem.parquet` where (l_shipinstruct='in-person' and l_orderkey between 5 and 10) or (l_linenumber <= 100 and not (l_returnflag is not true));
