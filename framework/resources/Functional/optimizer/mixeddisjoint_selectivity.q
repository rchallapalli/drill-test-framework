explain plan for select * from cp.`tpch/lineitem.parquet` where (l_shipinstruct='in-person' and l_orderkey between 5 and 10) or (l_shipinstruct <> 'in-person' and l_orderkey between 25 and 50);
