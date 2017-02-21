explain plan for select l_linenumber from cp.`tpch/lineitem.parquet` 
where 
  l_shipinstruct in ('in-person', 'dropoff', 'pickup', 'store', 'apartment', 'hold for 5 days', 'signature', 'door', 'community')
  and l_linenumber <= 100
  and l_returnflag = 'N'
  and l_linestatus = 0
  and lower(nvl(l_comment, ' ')) not like '%abc%'
  and lower(nvl(l_comment, ' ')) not like '%xyz%' 
  and lower(nvl(l_comment, ' ')) not like '%skl%' 
  and lower(nvl(l_comment, ' ')) not like '%jkcbjh%'  
  and l_quantity = 17.0
;
