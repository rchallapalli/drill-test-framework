explain plan for 
select coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`, pa14.`ITM_SBRND_CD`, pa15.`ITM_SBRND_CD`, pa16.`ITM_SBRND_CD`, pa17.`ITM_SBRND_CD`)  ITM_SBRND_CD,
a111.`SCTR_CD`  SCTR_CD,
max(a112.`SCTR_DESC`)  SCTR_DESC,
a110.`PROD_CTGY_CD`  PROD_CTGY_CD,
max(a111.`PROD_CTGY_DESC`)  PROD_CTGY_DESC,
a19.`ITM_CLS_CD`  ITM_CLS_CD,
max(a110.`ITM_CLS_DESC`)  ITM_CLS_DESC,
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`, pa15.`ITM_SCLS_CD`, pa16.`ITM_SCLS_CD`, pa17.`ITM_SCLS_CD`)  ITM_SCLS_CD,
max(a19.`ITM_SCLS_SHRT_DESC`)  ITM_SCLS_SHRT_DESC,
max(pa11.`WJXBFS1`)  TotalSalesRetail,
max(pa12.`WJXBFS1`)  TOTALSALESRETAILLW,
max(pa13.`WJXBFS1`)  TOTALSALESRETAILLY,
max(pa14.`WJXBFS1`)  AAPTOTALSALESRETAIL,
max(pa15.`WJXBFS1`)  OAPTOTALSALESRETAIL,
max(pa16.`MOSHQCOST`)  MOSHQCOST,
max(pa17.`MOSHQCOSTLY`)  MOSHQCOSTLY,
max(pa11.`WJXBFS2`)  TotalSalesUnit,
max(pa13.`WJXBFS2`)  TOTALSALESULY,
max(pa14.`WJXBFS2`)  AAPTOTALSALESU,
max(pa15.`WJXBFS2`)  OAPTOTALSALESU,
max(pa16.`DISASSEMBLEDCOSTPL`)  DISASSEMBLEDCOSTPL,
max(pa14.`WJXBFS3`)  AAPTOTALSALESCOST,
max(pa11.`WJXBFS3`)  TOTALSALESCOST,
max(pa15.`WJXBFS3`)  OAPMOSCOST,
max(pa15.`WJXBFS4`)  OAPDISASSEMBLEDCOST,
max(pa13.`WJXBFS3`)  TOTALSALESCOSTLY,
max(pa17.`DISASSEMBLEDCOSTLYPL`)  DISASSEMBLEDCOSTLYPL,
max(pa14.`WJXBFS4`)  AAPDISASSEMBLEDCOST,
max(pa15.`WJXBFS5`)  OAPTOTALSALESCOST,
max(pa14.`WJXBFS5`)  AAPMOSCOST
from (select
pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`TotalSalesRetail`  WJXBFS1,
pa01.`TotalSalesUnit`  WJXBFS2,
pa01.`TOTALSALESCOST`  WJXBFS3
from
(select a14.`ITM_SCLS_CD`  ITM_SCLS_CD,
a13.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TotalSalesRetail,
sum((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TotalSalesUnit,
sum((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOST,
max((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAGe_1,
sum((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TotalSalesRetail1,
sum((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TotalSalesUnit1,
sum((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOST1,
max((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG28_1,
sum((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TotalSalesRetail2,
sum((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TotalSalesUnit2,
sum((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOST2,
max((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG42_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`STO_LOC_ID` = a12.`LOC_ID`)
join
cp.`employee.json`
a13
 on 
(a11.`ITM_SKU_NUM` = a13.`ITM_SKU_NUM`)
join
cp.`employee.json`
a14
 on 
(a13.`ITM_STY_ID` = a14.`ITM_STY_ID`)
where
((a12.`ORG_DIV_ID` = 1000006 and a12.`ORG_CHNL_ID` = 1000001 and a12.`ORG_BRND_ID` = 1000001)
and a12.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a11.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and (a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '1224')
or (a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '0538')
or (a14.`ITM_SCLS_CD` = '0212'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0212'
and a13.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SBRND_CD` = '0538'
and a14.`ITM_SCLS_CD` = '0212')
or (a14.`ITM_SCLS_CD` = '0207'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1224'
and a14.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SBRND_CD` = '0538'
and a14.`ITM_SCLS_CD` = '0207')
or (a14.`ITM_SCLS_CD` = '0203'
and a13.`ITM_SBRND_CD` = '0538')
or (a14.`ITM_SCLS_CD` = '0203'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1224'
and a14.`ITM_SCLS_CD` = '0203')
or (a14.`ITM_SCLS_CD` = '0366'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0371'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0370'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1612'
and a14.`ITM_SCLS_CD` = '0159')
or (a14.`ITM_SCLS_CD` = '0263'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '0259'
and a13.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0260')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0258')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0292')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0262')
or (a14.`ITM_SCLS_CD` = '1114'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '0803'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '1901'
and a13.`ITM_SBRND_CD` = '0120'))
or ((a14.`ITM_CLS_CD` = '40040023          '
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_CLS_CD` = '40010001          '
and a13.`ITM_SBRND_CD` = '0315'))))
group by
a14.`ITM_SCLS_CD`,
a13.`ITM_SBRND_CD`
)
pa01
where
(pa01.`GODWFLAGe_1` = 1
and pa01.`GODWFLAGe_1` = 1)
)
pa11
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`TOTALSALESRETAILLW`  WJXBFS1
from
(select a16.`ITM_SCLS_CD`  ITM_SCLS_CD,
a15.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLW,
max((Case when a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAGf_1,
sum((Case when ((a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1224') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0212') or (a16.`ITM_SCLS_CD` = '0207' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0207') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0203') or (a16.`ITM_SCLS_CD` = '0366' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0371' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0370' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1612' and a16.`ITM_SCLS_CD` = '0159') or (a16.`ITM_SCLS_CD` = '0263' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0259' and a15.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0260') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0258') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0292') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0262') or (a16.`ITM_SCLS_CD` = '1114' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0803' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '1901' and a15.`ITM_SBRND_CD` = '0120')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLW1,
max((Case when ((a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1224') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0212') or (a16.`ITM_SCLS_CD` = '0207' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0207') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0203') or (a16.`ITM_SCLS_CD` = '0366' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0371' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0370' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1612' and a16.`ITM_SCLS_CD` = '0159') or (a16.`ITM_SCLS_CD` = '0263' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0259' and a15.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0260') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0258') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0292') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0262') or (a16.`ITM_SCLS_CD` = '1114' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0803' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '1901' and a15.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG29_1,
sum((Case when ((a16.`ITM_CLS_CD` = '40040023          ' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_CLS_CD` = '40010001          ' and a15.`ITM_SBRND_CD` = '0315')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLW2,
max((Case when ((a16.`ITM_CLS_CD` = '40040023          ' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_CLS_CD` = '40010001          ' and a15.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG43_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`TRXN_DT` = a12.`CAL_DT`)
join
cp.`employee.json`
a13
 on 
(a11.`STO_LOC_ID` = a13.`LOC_ID`)
join
cp.`employee.json`
a14
 on 
(a11.`TRXN_POST_DT` = a14.`CAL_DT` and
a12.`CAL_DT` = a14.`CAL_DT`)
join
cp.`employee.json`
a15
 on 
(a11.`ITM_SKU_NUM` = a15.`ITM_SKU_NUM`)
join
cp.`employee.json`
a16
 on 
(a15.`ITM_STY_ID` = a16.`ITM_STY_ID`)
where
((a13.`ORG_DIV_ID` = 1000006 and a13.`ORG_CHNL_ID` = 1000001 and a13.`ORG_BRND_ID` = 1000001)
and a13.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a12.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and a14.`ACCT_PRD_WK_END_DT` = '2017-02-25'
and (a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '1224')
or (a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '0538')
or (a16.`ITM_SCLS_CD` = '0212'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0212'
and a15.`ITM_SBRND_CD` = '1224')
or (a15.`ITM_SBRND_CD` = '0538'
and a16.`ITM_SCLS_CD` = '0212')
or (a16.`ITM_SCLS_CD` = '0207'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1224'
and a16.`ITM_SCLS_CD` = '0207')
or (a15.`ITM_SBRND_CD` = '0538'
and a16.`ITM_SCLS_CD` = '0207')
or (a16.`ITM_SCLS_CD` = '0203'
and a15.`ITM_SBRND_CD` = '0538')
or (a16.`ITM_SCLS_CD` = '0203'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1224'
and a16.`ITM_SCLS_CD` = '0203')
or (a16.`ITM_SCLS_CD` = '0366'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0371'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0370'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1612'
and a16.`ITM_SCLS_CD` = '0159')
or (a16.`ITM_SCLS_CD` = '0263'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '0259'
and a15.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0260')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0258')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0292')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0262')
or (a16.`ITM_SCLS_CD` = '1114'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '0803'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '1901'
and a15.`ITM_SBRND_CD` = '0120'))
or ((a16.`ITM_CLS_CD` = '40040023          '
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_CLS_CD` = '40010001          '
and a15.`ITM_SBRND_CD` = '0315'))))
group by
a16.`ITM_SCLS_CD`,
a15.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAGf_1` = 1
)
pa12
 on 
(pa11.`ITM_SBRND_CD` = pa12.`ITM_SBRND_CD` and
pa11.`ITM_SCLS_CD` = pa12.`ITM_SCLS_CD`)
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`TOTALSALESRETAILLY`  WJXBFS1,
pa01.`TOTALSALESULY`  WJXBFS2,
pa01.`TOTALSALESCOSTLY`  WJXBFS3
from
(select a15.`ITM_SCLS_CD`  ITM_SCLS_CD,
a14.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLY,
sum((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TOTALSALESULY,
sum((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOSTLY,
max((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAG10_1,
sum((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLY1,
sum((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TOTALSALESULY1,
sum((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOSTLY1,
max((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG2a_1,
sum((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then ((a11.`SLS_UNT_EXCL_VOID_XRNG_AMT` - a11.`RTN_UNT_EXCL_VOID_XRNG_AMT`) + a11.`ASSC_DISC_UNT_AMT`) else NULL end))  TOTALSALESRETAILLY2,
sum((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then (a11.`SLS_UNT_EXCL_VOID_XRNG_QTY` - a11.`RTN_UNT_EXCL_VOID_XRNG_QTY`) else NULL end))  TOTALSALESULY2,
sum((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then (a11.`EXT_SLS_CST_AMT` - a11.`EXT_RTN_CST_AMT`) else NULL end))  TOTALSALESCOSTLY2,
max((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG44_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`ACCT_PRD_WK_END_DT` = a12.`ACCT_PRD_LST_YR_WK_END_DT`)
join
cp.`employee.json`
a13
 on 
(a11.`STO_LOC_ID` = a13.`LOC_ID`)
join
cp.`employee.json`
a14
 on 
(a11.`ITM_SKU_NUM` = a14.`ITM_SKU_NUM`)
join
cp.`employee.json`
a15
 on 
(a14.`ITM_STY_ID` = a15.`ITM_STY_ID`)
where
((a13.`ORG_DIV_ID` = 1000006 and a13.`ORG_CHNL_ID` = 1000001 and a13.`ORG_BRND_ID` = 1000001)
and a13.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a12.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and (a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1224')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1224')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0212')
or (a15.`ITM_SCLS_CD` = '0207'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0207')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0207')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0203')
or (a15.`ITM_SCLS_CD` = '0366'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0371'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0370'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1612'
and a15.`ITM_SCLS_CD` = '0159')
or (a15.`ITM_SCLS_CD` = '0263'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0259'
and a14.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0260')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0258')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0292')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0262')
or (a15.`ITM_SCLS_CD` = '1114'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0803'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '1901'
and a14.`ITM_SBRND_CD` = '0120'))
or ((a15.`ITM_CLS_CD` = '40040023          '
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_CLS_CD` = '40010001          '
and a14.`ITM_SBRND_CD` = '0315'))))
group by
a15.`ITM_SCLS_CD`,
a14.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG10_1` = 1
)
pa13
 on 
(coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`) = pa13.`ITM_SBRND_CD` and
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`) = pa13.`ITM_SCLS_CD`)
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`AAPTOTALSALESRETAIL`  WJXBFS1,
pa01.`AAPTOTALSALESU`  WJXBFS2,
pa01.`AAPTOTALSALESCOST`  WJXBFS3,
pa01.`AAPDISASSEMBLEDCOST`  WJXBFS4,
pa01.`AAPMOSCOST`  WJXBFS5
from
(select a13.`ITM_SCLS_CD`  ITM_SCLS_CD,
a12.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then 1 else 0 end))  GODWFLAG11_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then 1 else 0 end))  GODWFLAG12_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST1,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then 1 else 0 end))  GODWFLAG2b_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST1,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then 1 else 0 end))  GODWFLAG2c_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST2,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then 1 else 0 end))  GODWFLAG45_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST2,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then 1 else 0 end))  GODWFLAG46_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`ITM_SKU_NUM` = a12.`ITM_SKU_NUM`)
join
cp.`employee.json`
a13
 on 
(a12.`ITM_STY_ID` = a13.`ITM_STY_ID`)
where
((a11.`ORG_DIV_ID` = 1000006 and a11.`ORG_CHNL_ID` = 1000001 and a11.`ORG_BRND_ID` = 1000001)
and a11.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and ((a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665'))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665'))
or (a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and ((a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1224')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0212')
or (a13.`ITM_SCLS_CD` = '0207'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0207')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0203')
or (a13.`ITM_SCLS_CD` = '0366'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0371'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0370'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1612'
and a13.`ITM_SCLS_CD` = '0159')
or (a13.`ITM_SCLS_CD` = '0263'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0259'
and a12.`ITM_SBRND_CD` = '0102')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0260')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0258')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0292')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0262')
or (a13.`ITM_SCLS_CD` = '1114'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0803'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '1901'
and a12.`ITM_SBRND_CD` = '0120')))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and ((a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1224')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0212')
or (a13.`ITM_SCLS_CD` = '0207'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0207')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0203')
or (a13.`ITM_SCLS_CD` = '0366'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0371'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0370'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1612'
and a13.`ITM_SCLS_CD` = '0159')
or (a13.`ITM_SCLS_CD` = '0263'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0259'
and a12.`ITM_SBRND_CD` = '0102')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0260')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0258')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0292')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0262')
or (a13.`ITM_SCLS_CD` = '1114'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0803'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '1901'
and a12.`ITM_SBRND_CD` = '0120')))
or (a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and ((a13.`ITM_CLS_CD` = '40040023          '
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_CLS_CD` = '40010001          '
and a12.`ITM_SBRND_CD` = '0315')))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and ((a13.`ITM_CLS_CD` = '40040023          '
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_CLS_CD` = '40010001          '
and a12.`ITM_SBRND_CD` = '0315')))))
group by
a13.`ITM_SCLS_CD`,
a12.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG11_1` = 1
)
pa14
 on 
(coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`) = pa14.`ITM_SBRND_CD` and
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`) = pa14.`ITM_SCLS_CD`)
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`OAPTOTALSALESRETAIL`  WJXBFS1,
pa01.`OAPTOTALSALESU`  WJXBFS2,
pa01.`OAPMOSCOST`  WJXBFS3,
pa01.`OAPDISASSEMBLEDCOST`  WJXBFS4,
pa01.`OAPTOTALSALESCOST`  WJXBFS5
from
(select a13.`ITM_SCLS_CD`  ITM_SCLS_CD,
a12.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then 1 else 0 end))  GODWFLAG11_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')) then 1 else 0 end))  GODWFLAG12_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST1,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then 1 else 0 end))  GODWFLAG2b_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST1,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SCLS_CD` = '1916' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0212' and a12.`ITM_SBRND_CD` = '1224') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0212') or (a13.`ITM_SCLS_CD` = '0207' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0207') or (a12.`ITM_SBRND_CD` = '0538' and a13.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '0538') or (a13.`ITM_SCLS_CD` = '0203' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1224' and a13.`ITM_SCLS_CD` = '0203') or (a13.`ITM_SCLS_CD` = '0366' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0371' and a12.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SCLS_CD` = '0370' and a12.`ITM_SBRND_CD` = '1612') or (a12.`ITM_SBRND_CD` = '1612' and a13.`ITM_SCLS_CD` = '0159') or (a13.`ITM_SCLS_CD` = '0263' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0259' and a12.`ITM_SBRND_CD` = '0102') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0260') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0258') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0292') or (a12.`ITM_SBRND_CD` = '0102' and a13.`ITM_SCLS_CD` = '0262') or (a13.`ITM_SCLS_CD` = '1114' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '0803' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SCLS_CD` = '1901' and a12.`ITM_SBRND_CD` = '0120'))) then 1 else 0 end))  GODWFLAG2c_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  AAPTOTALSALESRETAIL2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  AAPTOTALSALESU2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  AAPTOTALSALESCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  AAPDISASSEMBLEDCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`MOS_CST_AMT` else NULL end))  AAPMOSCOST2,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('AAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then 1 else 0 end))  GODWFLAG45_1,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_RTL_AMT` else NULL end))  OAPTOTALSALESRETAIL2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_UNT_CNT` else NULL end))  OAPTOTALSALESU2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`MOS_CST_AMT` else NULL end))  OAPMOSCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then (a11.`DASSM_UNT_CNT` * a11.`FILE_CST_AMT`) else NULL end))  OAPDISASSEMBLEDCOST2,
sum((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then a11.`TOT_SLS_CST_AMT` else NULL end))  OAPTOTALSALESCOST2,
max((Case when (a11.`MDSE_PLN_TYP_CD` in ('OAP  ') and ((a13.`ITM_CLS_CD` = '40040023          ' and a12.`ITM_SBRND_CD` = '0102') or (a13.`ITM_CLS_CD` = '40010001          ' and a12.`ITM_SBRND_CD` = '0315'))) then 1 else 0 end))  GODWFLAG46_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`ITM_SKU_NUM` = a12.`ITM_SKU_NUM`)
join
cp.`employee.json`
a13
 on 
(a12.`ITM_STY_ID` = a13.`ITM_STY_ID`)
where
((a11.`ORG_DIV_ID` = 1000006 and a11.`ORG_CHNL_ID` = 1000001 and a11.`ORG_BRND_ID` = 1000001)
and a11.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and ((a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665'))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and a12.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665'))
or (a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and ((a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1224')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0212')
or (a13.`ITM_SCLS_CD` = '0207'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0207')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0203')
or (a13.`ITM_SCLS_CD` = '0366'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0371'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0370'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1612'
and a13.`ITM_SCLS_CD` = '0159')
or (a13.`ITM_SCLS_CD` = '0263'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0259'
and a12.`ITM_SBRND_CD` = '0102')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0260')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0258')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0292')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0262')
or (a13.`ITM_SCLS_CD` = '1114'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0803'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '1901'
and a12.`ITM_SBRND_CD` = '0120')))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and ((a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SCLS_CD` = '1916'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0212'
and a12.`ITM_SBRND_CD` = '1224')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0212')
or (a13.`ITM_SCLS_CD` = '0207'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0207')
or (a12.`ITM_SBRND_CD` = '0538'
and a13.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '0538')
or (a13.`ITM_SCLS_CD` = '0203'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1224'
and a13.`ITM_SCLS_CD` = '0203')
or (a13.`ITM_SCLS_CD` = '0366'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0371'
and a12.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SCLS_CD` = '0370'
and a12.`ITM_SBRND_CD` = '1612')
or (a12.`ITM_SBRND_CD` = '1612'
and a13.`ITM_SCLS_CD` = '0159')
or (a13.`ITM_SCLS_CD` = '0263'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0259'
and a12.`ITM_SBRND_CD` = '0102')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0260')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0258')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0292')
or (a12.`ITM_SBRND_CD` = '0102'
and a13.`ITM_SCLS_CD` = '0262')
or (a13.`ITM_SCLS_CD` = '1114'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '0803'
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SCLS_CD` = '1901'
and a12.`ITM_SBRND_CD` = '0120')))
or (a11.`MDSE_PLN_TYP_CD` in ('AAP  ')
and ((a13.`ITM_CLS_CD` = '40040023          '
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_CLS_CD` = '40010001          '
and a12.`ITM_SBRND_CD` = '0315')))
or (a11.`MDSE_PLN_TYP_CD` in ('OAP  ')
and ((a13.`ITM_CLS_CD` = '40040023          '
and a12.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_CLS_CD` = '40010001          '
and a12.`ITM_SBRND_CD` = '0315')))))
group by
a13.`ITM_SCLS_CD`,
a12.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG12_1` = 1
)
pa15
 on 
(coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`, pa14.`ITM_SBRND_CD`) = pa15.`ITM_SBRND_CD` and
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`) = pa15.`ITM_SCLS_CD`)
full outer join
(select coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`)  ITM_SCLS_CD,
coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`)  ITM_SBRND_CD,
pa11.`WJXBFS1`  MOSHQCOST,
pa12.`WJXBFS1`  DISASSEMBLEDCOSTPL
from
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`MOSHQCOST`  WJXBFS1
from
(select a14.`ITM_SCLS_CD`  ITM_SCLS_CD,
a13.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOST,
max((Case when a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAG13_1,
sum((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOST1,
max((Case when ((a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SCLS_CD` = '1916' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0212' and a13.`ITM_SBRND_CD` = '1224') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0212') or (a14.`ITM_SCLS_CD` = '0207' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0207') or (a13.`ITM_SBRND_CD` = '0538' and a14.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '0538') or (a14.`ITM_SCLS_CD` = '0203' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1224' and a14.`ITM_SCLS_CD` = '0203') or (a14.`ITM_SCLS_CD` = '0366' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0371' and a13.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SCLS_CD` = '0370' and a13.`ITM_SBRND_CD` = '1612') or (a13.`ITM_SBRND_CD` = '1612' and a14.`ITM_SCLS_CD` = '0159') or (a14.`ITM_SCLS_CD` = '0263' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0259' and a13.`ITM_SBRND_CD` = '0102') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0260') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0258') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0292') or (a13.`ITM_SBRND_CD` = '0102' and a14.`ITM_SCLS_CD` = '0262') or (a14.`ITM_SCLS_CD` = '1114' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '0803' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SCLS_CD` = '1901' and a13.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG2d_1,
sum((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOST2,
max((Case when ((a14.`ITM_CLS_CD` = '40040023          ' and a13.`ITM_SBRND_CD` = '0102') or (a14.`ITM_CLS_CD` = '40010001          ' and a13.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG47_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`LOC_ID` = a12.`LOC_ID`)
join
cp.`employee.json`
a13
 on 
(a11.`ITM_SKU_NUM` = a13.`ITM_SKU_NUM`)
join
cp.`employee.json`
a14
 on 
(a13.`ITM_STY_ID` = a14.`ITM_STY_ID`)
where
((a12.`ORG_DIV_ID` = 1000006 and a12.`ORG_CHNL_ID` = 1000001 and a12.`ORG_BRND_ID` = 1000001)
and a12.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a11.`WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and a11.`PKG_TYP_CD` in ('C', 'L')
and (a13.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '1224')
or (a14.`ITM_SCLS_CD` = '1916'
and a13.`ITM_SBRND_CD` = '0538')
or (a14.`ITM_SCLS_CD` = '0212'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0212'
and a13.`ITM_SBRND_CD` = '1224')
or (a13.`ITM_SBRND_CD` = '0538'
and a14.`ITM_SCLS_CD` = '0212')
or (a14.`ITM_SCLS_CD` = '0207'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1224'
and a14.`ITM_SCLS_CD` = '0207')
or (a13.`ITM_SBRND_CD` = '0538'
and a14.`ITM_SCLS_CD` = '0207')
or (a14.`ITM_SCLS_CD` = '0203'
and a13.`ITM_SBRND_CD` = '0538')
or (a14.`ITM_SCLS_CD` = '0203'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1224'
and a14.`ITM_SCLS_CD` = '0203')
or (a14.`ITM_SCLS_CD` = '0366'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0371'
and a13.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SCLS_CD` = '0370'
and a13.`ITM_SBRND_CD` = '1612')
or (a13.`ITM_SBRND_CD` = '1612'
and a14.`ITM_SCLS_CD` = '0159')
or (a14.`ITM_SCLS_CD` = '0263'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '0259'
and a13.`ITM_SBRND_CD` = '0102')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0260')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0258')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0292')
or (a13.`ITM_SBRND_CD` = '0102'
and a14.`ITM_SCLS_CD` = '0262')
or (a14.`ITM_SCLS_CD` = '1114'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '0803'
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SCLS_CD` = '1901'
and a13.`ITM_SBRND_CD` = '0120'))
or ((a14.`ITM_CLS_CD` = '40040023          '
and a13.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_CLS_CD` = '40010001          '
and a13.`ITM_SBRND_CD` = '0315'))))
group by
a14.`ITM_SCLS_CD`,
a13.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG13_1` = 1
)
pa11
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`DISASSEMBLEDCOSTPL`  WJXBFS1
from
(select a15.`ITM_SCLS_CD`  ITM_SCLS_CD,
a14.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTPL,
max((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAG14_1,
sum((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTPL1,
max((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG2e_1,
sum((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTPL2,
max((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG48_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`MTRL_LDGR_POST_DT` = a12.`CAL_DT`)
join
cp.`employee.json`
a13
 on 
(a11.`LOC_ID` = a13.`LOC_ID`)
join
cp.`employee.json`
a14
 on 
(a11.`ITM_SKU_NUM` = a14.`ITM_SKU_NUM`)
join
cp.`employee.json`
a15
 on 
(a14.`ITM_STY_ID` = a15.`ITM_STY_ID`)
where
((a13.`ORG_DIV_ID` = 1000006 and a13.`ORG_CHNL_ID` = 1000001 and a13.`ORG_BRND_ID` = 1000001)
and a13.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a12.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and a11.`PKG_TYP_CD` in ('C', 'L')
and (a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1224')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1224')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0212')
or (a15.`ITM_SCLS_CD` = '0207'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0207')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0207')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0203')
or (a15.`ITM_SCLS_CD` = '0366'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0371'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0370'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1612'
and a15.`ITM_SCLS_CD` = '0159')
or (a15.`ITM_SCLS_CD` = '0263'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0259'
and a14.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0260')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0258')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0292')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0262')
or (a15.`ITM_SCLS_CD` = '1114'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0803'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '1901'
and a14.`ITM_SBRND_CD` = '0120'))
or ((a15.`ITM_CLS_CD` = '40040023          '
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_CLS_CD` = '40010001          '
and a14.`ITM_SBRND_CD` = '0315'))))
group by
a15.`ITM_SCLS_CD`,
a14.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG14_1` = 1
)
pa12
 on 
(pa11.`ITM_SBRND_CD` = pa12.`ITM_SBRND_CD` and
pa11.`ITM_SCLS_CD` = pa12.`ITM_SCLS_CD`)
)
pa16
 on 
(coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`, pa14.`ITM_SBRND_CD`, pa15.`ITM_SBRND_CD`) = pa16.`ITM_SBRND_CD` and
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`, pa15.`ITM_SCLS_CD`) = pa16.`ITM_SCLS_CD`)
full outer join
(select coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`)  ITM_SCLS_CD,
coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`)  ITM_SBRND_CD,
pa11.`WJXBFS1`  MOSHQCOSTLY,
pa12.`WJXBFS1`  DISASSEMBLEDCOSTLYPL
from
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`MOSHQCOSTLY`  WJXBFS1
from
(select a15.`ITM_SCLS_CD`  ITM_SCLS_CD,
a14.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOSTLY,
max((Case when a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAG16_1,
sum((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOSTLY1,
max((Case when ((a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SCLS_CD` = '1916' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0212' and a14.`ITM_SBRND_CD` = '1224') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0212') or (a15.`ITM_SCLS_CD` = '0207' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0207') or (a14.`ITM_SBRND_CD` = '0538' and a15.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '0538') or (a15.`ITM_SCLS_CD` = '0203' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1224' and a15.`ITM_SCLS_CD` = '0203') or (a15.`ITM_SCLS_CD` = '0366' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0371' and a14.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SCLS_CD` = '0370' and a14.`ITM_SBRND_CD` = '1612') or (a14.`ITM_SBRND_CD` = '1612' and a15.`ITM_SCLS_CD` = '0159') or (a15.`ITM_SCLS_CD` = '0263' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0259' and a14.`ITM_SBRND_CD` = '0102') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0260') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0258') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0292') or (a14.`ITM_SBRND_CD` = '0102' and a15.`ITM_SCLS_CD` = '0262') or (a15.`ITM_SCLS_CD` = '1114' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '0803' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SCLS_CD` = '1901' and a14.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG30_1,
sum((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then a11.`MOS_HQ_CST_AMT` else NULL end))  MOSHQCOSTLY2,
max((Case when ((a15.`ITM_CLS_CD` = '40040023          ' and a14.`ITM_SBRND_CD` = '0102') or (a15.`ITM_CLS_CD` = '40010001          ' and a14.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG4a_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`WK_END_DT` = a12.`ACCT_PRD_LST_YR_WK_END_DT`)
join
cp.`employee.json`
a13
 on 
(a11.`LOC_ID` = a13.`LOC_ID`)
join
cp.`employee.json`
a14
 on 
(a11.`ITM_SKU_NUM` = a14.`ITM_SKU_NUM`)
join
cp.`employee.json`
a15
 on 
(a14.`ITM_STY_ID` = a15.`ITM_STY_ID`)
where
((a13.`ORG_DIV_ID` = 1000006 and a13.`ORG_CHNL_ID` = 1000001 and a13.`ORG_BRND_ID` = 1000001)
and a13.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a12.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and a11.`PKG_TYP_CD` in ('C', 'L')
and (a14.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '1224')
or (a15.`ITM_SCLS_CD` = '1916'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0212'
and a14.`ITM_SBRND_CD` = '1224')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0212')
or (a15.`ITM_SCLS_CD` = '0207'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0207')
or (a14.`ITM_SBRND_CD` = '0538'
and a15.`ITM_SCLS_CD` = '0207')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '0538')
or (a15.`ITM_SCLS_CD` = '0203'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1224'
and a15.`ITM_SCLS_CD` = '0203')
or (a15.`ITM_SCLS_CD` = '0366'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0371'
and a14.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SCLS_CD` = '0370'
and a14.`ITM_SBRND_CD` = '1612')
or (a14.`ITM_SBRND_CD` = '1612'
and a15.`ITM_SCLS_CD` = '0159')
or (a15.`ITM_SCLS_CD` = '0263'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0259'
and a14.`ITM_SBRND_CD` = '0102')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0260')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0258')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0292')
or (a14.`ITM_SBRND_CD` = '0102'
and a15.`ITM_SCLS_CD` = '0262')
or (a15.`ITM_SCLS_CD` = '1114'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '0803'
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SCLS_CD` = '1901'
and a14.`ITM_SBRND_CD` = '0120'))
or ((a15.`ITM_CLS_CD` = '40040023          '
and a14.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_CLS_CD` = '40010001          '
and a14.`ITM_SBRND_CD` = '0315'))))
group by
a15.`ITM_SCLS_CD`,
a14.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG16_1` = 1
)
pa11
full outer join
(select pa01.`ITM_SBRND_CD`  ITM_SBRND_CD,
pa01.`ITM_SCLS_CD`  ITM_SCLS_CD,
pa01.`DISASSEMBLEDCOSTLYPL`  WJXBFS1
from
(select a16.`ITM_SCLS_CD`  ITM_SCLS_CD,
a15.`ITM_SBRND_CD`  ITM_SBRND_CD,
sum((Case when a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTLYPL,
max((Case when a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665') then 1 else 0 end))  GODWFLAG17_1,
sum((Case when ((a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1224') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0212') or (a16.`ITM_SCLS_CD` = '0207' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0207') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0203') or (a16.`ITM_SCLS_CD` = '0366' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0371' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0370' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1612' and a16.`ITM_SCLS_CD` = '0159') or (a16.`ITM_SCLS_CD` = '0263' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0259' and a15.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0260') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0258') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0292') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0262') or (a16.`ITM_SCLS_CD` = '1114' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0803' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '1901' and a15.`ITM_SBRND_CD` = '0120')) then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTLYPL1,
max((Case when ((a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '1224') or (a16.`ITM_SCLS_CD` = '1916' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0212' and a15.`ITM_SBRND_CD` = '1224') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0212') or (a16.`ITM_SCLS_CD` = '0207' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0207') or (a15.`ITM_SBRND_CD` = '0538' and a16.`ITM_SCLS_CD` = '0207') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '0538') or (a16.`ITM_SCLS_CD` = '0203' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1224' and a16.`ITM_SCLS_CD` = '0203') or (a16.`ITM_SCLS_CD` = '0366' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0371' and a15.`ITM_SBRND_CD` = '1612') or (a16.`ITM_SCLS_CD` = '0370' and a15.`ITM_SBRND_CD` = '1612') or (a15.`ITM_SBRND_CD` = '1612' and a16.`ITM_SCLS_CD` = '0159') or (a16.`ITM_SCLS_CD` = '0263' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0259' and a15.`ITM_SBRND_CD` = '0102') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0260') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0258') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0292') or (a15.`ITM_SBRND_CD` = '0102' and a16.`ITM_SCLS_CD` = '0262') or (a16.`ITM_SCLS_CD` = '1114' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '0803' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_SCLS_CD` = '1901' and a15.`ITM_SBRND_CD` = '0120')) then 1 else 0 end))  GODWFLAG31_1,
sum((Case when ((a16.`ITM_CLS_CD` = '40040023          ' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_CLS_CD` = '40010001          ' and a15.`ITM_SBRND_CD` = '0315')) then a11.`MTRL_LDGR_VAR_AMT` else NULL end))  DISASSEMBLEDCOSTLYPL2,
max((Case when ((a16.`ITM_CLS_CD` = '40040023          ' and a15.`ITM_SBRND_CD` = '0102') or (a16.`ITM_CLS_CD` = '40010001          ' and a15.`ITM_SBRND_CD` = '0315')) then 1 else 0 end))  GODWFLAG4b_1
from
cp.`employee.json`
a11
join
cp.`employee.json`
a12
 on 
(a11.`MTRL_LDGR_POST_DT` = a12.`CAL_DT`)
join
cp.`employee.json`
a13
 on 
(a12.`ACCT_PRD_WK_END_DT` = a13.`ACCT_PRD_LST_YR_WK_END_DT`)
join
cp.`employee.json`
a14
 on 
(a11.`LOC_ID` = a14.`LOC_ID`)
join
cp.`employee.json`
a15
 on 
(a11.`ITM_SKU_NUM` = a15.`ITM_SKU_NUM`)
join
cp.`employee.json`
a16
 on 
(a15.`ITM_STY_ID` = a16.`ITM_STY_ID`)
where
((a14.`ORG_DIV_ID` = 1000006 and a14.`ORG_CHNL_ID` = 1000001 and a14.`ORG_BRND_ID` = 1000001)
and a14.`CO_CD_ORG_PTY_ID` in (1022481, 1022483, 7604542)
and a13.`ACCT_PRD_WK_END_DT` BETWEEN '2016-08-06' and '2017-01-28'
and a11.`PKG_TYP_CD` in ('C', 'L')
and (a15.`ITM_SBRND_CD` in ('1612', '1224', '0538', '0102', '0213', '2014', '0432', '2092', '0248', '0223', '0667', '0544', '0120', '2002', '0315', '9121', '1623', '0606', '2127', '0665')
or ((a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '1224')
or (a16.`ITM_SCLS_CD` = '1916'
and a15.`ITM_SBRND_CD` = '0538')
or (a16.`ITM_SCLS_CD` = '0212'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0212'
and a15.`ITM_SBRND_CD` = '1224')
or (a15.`ITM_SBRND_CD` = '0538'
and a16.`ITM_SCLS_CD` = '0212')
or (a16.`ITM_SCLS_CD` = '0207'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1224'
and a16.`ITM_SCLS_CD` = '0207')
or (a15.`ITM_SBRND_CD` = '0538'
and a16.`ITM_SCLS_CD` = '0207')
or (a16.`ITM_SCLS_CD` = '0203'
and a15.`ITM_SBRND_CD` = '0538')
or (a16.`ITM_SCLS_CD` = '0203'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1224'
and a16.`ITM_SCLS_CD` = '0203')
or (a16.`ITM_SCLS_CD` = '0366'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0371'
and a15.`ITM_SBRND_CD` = '1612')
or (a16.`ITM_SCLS_CD` = '0370'
and a15.`ITM_SBRND_CD` = '1612')
or (a15.`ITM_SBRND_CD` = '1612'
and a16.`ITM_SCLS_CD` = '0159')
or (a16.`ITM_SCLS_CD` = '0263'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '0259'
and a15.`ITM_SBRND_CD` = '0102')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0260')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0258')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0292')
or (a15.`ITM_SBRND_CD` = '0102'
and a16.`ITM_SCLS_CD` = '0262')
or (a16.`ITM_SCLS_CD` = '1114'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '0803'
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_SCLS_CD` = '1901'
and a15.`ITM_SBRND_CD` = '0120'))
or ((a16.`ITM_CLS_CD` = '40040023          '
and a15.`ITM_SBRND_CD` = '0102')
or (a16.`ITM_CLS_CD` = '40010001          '
and a15.`ITM_SBRND_CD` = '0315'))))
group by
a16.`ITM_SCLS_CD`,
a15.`ITM_SBRND_CD`
)
pa01
where
pa01.`GODWFLAG17_1` = 1
)
pa12
 on 
(pa11.`ITM_SBRND_CD` = pa12.`ITM_SBRND_CD` and
pa11.`ITM_SCLS_CD` = pa12.`ITM_SCLS_CD`)
)
pa17
 on 
(coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`, pa14.`ITM_SBRND_CD`, pa15.`ITM_SBRND_CD`, pa16.`ITM_SBRND_CD`) = pa17.`ITM_SBRND_CD` and
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`, pa15.`ITM_SCLS_CD`, pa16.`ITM_SCLS_CD`) = pa17.`ITM_SCLS_CD`)
join
cp.`employee.json`
a19
 on 
(coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`, pa15.`ITM_SCLS_CD`, pa16.`ITM_SCLS_CD`, pa17.`ITM_SCLS_CD`) = a19.`ITM_SCLS_CD`)
join
cp.`employee.json`
a110
 on 
(a19.`ITM_CLS_CD` = a110.`ITM_CLS_CD`)
join
cp.`employee.json`
a111
 on 
(a110.`PROD_CTGY_CD` = a111.`PROD_CTGY_CD`)
join
cp.`employee.json`
a112
 on 
(a111.`SCTR_CD` = a112.`SCTR_CD`)
group by coalesce(pa11.`ITM_SBRND_CD`, pa12.`ITM_SBRND_CD`, pa13.`ITM_SBRND_CD`, pa14.`ITM_SBRND_CD`, pa15.`ITM_SBRND_CD`, pa16.`ITM_SBRND_CD`, pa17.`ITM_SBRND_CD`),
a111.`SCTR_CD`,
a110.`PROD_CTGY_CD`,
a19.`ITM_CLS_CD`,
coalesce(pa11.`ITM_SCLS_CD`, pa12.`ITM_SCLS_CD`, pa13.`ITM_SCLS_CD`, pa14.`ITM_SCLS_CD`, pa15.`ITM_SCLS_CD`, pa16.`ITM_SCLS_CD`, pa17.`ITM_SCLS_CD`)
;
