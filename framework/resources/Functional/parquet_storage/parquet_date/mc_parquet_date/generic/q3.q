select d.EXPR$0 col1_date, d.l_commitdate, d.l_receiptdate from dfs.`/drill/testdata/mc_parquet_date/lineitem_dates` d inner join cp.`tpch/lineitem.parquet` cpl on d.EXPR$0 = cpl.l_shipdate where d.EXPR$0 > date '1998-11-10';
