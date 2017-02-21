explain plan for select * from 
((select
  l.l_orderkey,
  sum(l.l_extendedprice * (1 - l.l_discount)) as revenue,
  o.o_orderdate,
  o.o_shippriority
from
  cp.`tpch/customer.parquet` c,
  cp.`tpch/orders.parquet` o,
  cp.`tpch/lineitem.parquet` l
where
  c.c_mktsegment = 'HOUSEHOLD'
  and c.c_custkey = o.o_custkey
  and l.l_orderkey = o.o_orderkey
  and o.o_orderdate = date '1995-03-25'
  and l.l_shipdate = date '1995-03-25'
  and l.l_shipinstruct <> 'DELIVER IN PERSON'
  and (lower(nvl(l.l_comment, ' '))  like 'tst%'
    or lower(nvl(l.l_comment, ' '))  like 'test%'
    or lower(nvl(l.l_comment, ' '))  like 'demo%'
    or lower(nvl(l.l_comment, ' '))  like 'train%')
group by
  l.l_orderkey,
  o.o_orderdate,
  o.o_shippriority
order by
  revenue desc,
  o.o_orderdate
)
union

(select
  l.l_orderkey,
  sum(l.l_extendedprice * (1 - l.l_discount)) as revenue,
  o.o_orderdate,
  o.o_shippriority
from
  cp.`tpch/customer.parquet` c,
  cp.`tpch/orders.parquet` o,
  cp.`tpch/lineitem.parquet` l
where
  c.c_mktsegment = 'HOUSEHOLD'
  and c.c_custkey = o.o_custkey
  and l.l_orderkey = o.o_orderkey
  and o.o_orderdate = date '1995-03-25'
  and l.l_shipdate = date '1995-03-25'
  and l.l_shipinstruct <> 'DELIVER IN PERSON'
  and (lower(nvl(l.l_comment, ' '))  like 'tst%'
    or lower(nvl(l.l_comment, ' '))  like 'test%'
    or lower(nvl(l.l_comment, ' '))  like 'demo%'
    or lower(nvl(l.l_comment, ' '))  like 'train%')
group by
  l.l_orderkey,
  o.o_orderdate,
  o.o_shippriority
order by
  revenue desc,
  o.o_orderdate
)
union

(select
  l.l_orderkey,
  sum(l.l_extendedprice * (1 - l.l_discount)) as revenue,
  o.o_orderdate,
  o.o_shippriority
from
  cp.`tpch/customer.parquet` c,
  cp.`tpch/orders.parquet` o,
  cp.`tpch/lineitem.parquet` l
where
  c.c_mktsegment = 'HOUSEHOLD'
  and c.c_custkey = o.o_custkey
  and l.l_orderkey = o.o_orderkey
  and o.o_orderdate = date '1995-03-25'
  and l.l_shipdate = date '1995-03-25'
  and l.l_shipinstruct <> 'DELIVER IN PERSON'
  and (lower(nvl(l.l_comment, ' '))  like 'tst%'
    or lower(nvl(l.l_comment, ' '))  like 'test%'
    or lower(nvl(l.l_comment, ' '))  like 'demo%'
    or lower(nvl(l.l_comment, ' '))  like 'train%')
group by
  l.l_orderkey,
  o.o_orderdate,
  o.o_shippriority
order by
  revenue desc,
  o.o_orderdate));
