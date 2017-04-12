ALTER TABLE add_columns1 ADD COLUMNS (
  varchar_col string,
  float_col float,
  double_col double,
  bool_col boolean
);

ALTER TABLE remove_columns1 REPLACE COLUMNS (
  int_col int,
  bigint_col bigint,
  date_col date,
  time_col string,
  timestamp_col timestamp,
  interval_col string
);

ALTER TABLE add_columns2 ADD COLUMNS (
  varchar_col string,
  float_col float,
  double_col double,
  bool_col boolean
);

ALTER TABLE remove_columns2 REPLACE COLUMNS (
  int_col int,
  bigint_col bigint,
  date_col date,
  time_col string,
  timestamp_col timestamp,
  interval_col string
);



ALTER TABLE dpp_compressed_mktevents ADD COLUMNS (newcol STRING);

ALTER TABLE changemetadata_orders_partitioned ADD COLUMNS (
  o_clerk STRING,
  o_shippriority INT, 
  o_comment STRING
);

ALTER TABLE changemetadata_orders_partitioned ADD PARTITION (year=1997) location '/drill/testdata/hive_storage/orders_partitioned/1997';
