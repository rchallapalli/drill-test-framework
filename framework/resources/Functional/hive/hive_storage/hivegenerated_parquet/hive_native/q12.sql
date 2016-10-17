alter session set `store.hive.optimize_scan_with_native_readers` = true;
select date_col from hive1dot2_fewtypes_null where date_col is not null;
alter session set `store.hive.optimize_scan_with_native_readers` = false;
