select max(cast(c_time as time)) as col1, cast(c_time as time) + (interval '2:30:45.100' hour to second * (10 / 2)) as col2 from basic group by cast(c_time as time) + (interval '2:30:45.100' hour to second * (10 / 2)) order by col1;