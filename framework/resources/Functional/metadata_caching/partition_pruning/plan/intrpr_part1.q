refresh table metadata s_1level;
explain plan for select * from s_1level where dir0 = SUBSTR('HAAAAABC', 6) and s_nationkey > 15;
