select * from sys.version;
select * from sys.drillbits;
alter system set `planner.enable_decimal_data_type` = true;
alter system set `new_view_default_permissions` = '777';
alter system set `planner.enable_limit0_optimization` = true;
alter system set `exec.errors.verbose` = true;
alter session set `store.parquet.use_new_reader` = true;
