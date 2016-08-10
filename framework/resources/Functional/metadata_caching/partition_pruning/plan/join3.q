refresh table metadata l_3level;
refresh table metadata c_1level;
refresh table metadata o_2level;
explain plan for select
  l.l_orderkey,
  sum(l.l_extendedprice * (1 - l.l_discount)) as revenue,
  o.o_orderdate,
  o.o_shippriority
from
  cp.`tpch/customer.parquet` c,
  o_2level o,
  l_3level l
where
  c.c_mktsegment = 'HOUSEHOLD'
  and c.c_custkey = o.o_custkey
  and l.l_orderkey = o.o_orderkey
  and l.dir0 = 1 and l.dir1 = 'three' and l.dir2 = '2015-7-12'
  and o.dir0 = '1991' and o.dir1 = 'feb' 
  and o.o_orderdate < date '1995-03-25'
  and l.l_shipdate > date '1995-03-25'
group by
  l.l_orderkey,
  o.o_orderdate,
  o.o_shippriority
order by
  revenue desc,
  o.o_orderdate
limit 10;
select * from sys.version;
select * from sys.version;
select * from sys.version;
