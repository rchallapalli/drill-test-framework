alter session set `store.parquet.use_new_reader` = true;
select l_shipdate from cp.`tpch/lineitem.parquet` order by l_linenumber limit 100;

