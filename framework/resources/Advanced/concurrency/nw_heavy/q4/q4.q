select max(s.sum_base_price) from (select sum(l_extendedprice) as sum_base_price, count(*) as count_order from dfs.concurrency.lineitem group by l_returnflag, l_linestatus) s;
