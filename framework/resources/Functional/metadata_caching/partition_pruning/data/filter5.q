select l_orderkey, dir0 from l_3level where dir0 = 1 and dir1 = 'one' and (dir2 = '2015-7-12' or l_discount > 0.05 or l_discount > 0.07);
