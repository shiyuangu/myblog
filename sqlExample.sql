ALTER SESSION
ENABLE PARALLEL QUERY;


ALTER SESSION SET
NLS_DATE_FORMAT='YYYY-MM-DD';



WITH
asin_codes 
AS ( SELECT '3P' AS asin_code, 'M' 
AS buybox_winner,
'N' 
AS fast_track 
FROM DUAL 
UNION ALL
SELECT 
'3P-AC'       AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-CTRL'     AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-FBA'      AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-FT'       AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-MSF'      AS
asin_code,

'Q' 
AS buybox_winner,

'Q' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-NFT'      AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'3P-OB'       AS
asin_code,

'M' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'CTRL'        AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'CTRL-DS'     AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'CTRL-NEW'    AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'EOD-OSI'     AS
asin_code,

'Q' 
AS buybox_winner,

'Q' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT'          AS
asin_code,

'R' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT-FBA'      AS
asin_code,

'F' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT-FBA-AC'   AS
asin_code,

'F' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT-FT4ALL'   AS
asin_code,

'R' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT-MOD'      AS
asin_code,

'R' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'FT-RDD'      AS
asin_code,

'R' 
AS buybox_winner,

'Y' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT'         AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-AA'      AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-CA'      AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-DCXFER'  AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-DIGITAL' 
AS asin_code,

'Q' 
AS buybox_winner,

'Q' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-DSF'     AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-FTI'     AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-NEW'     AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NFT-RES'     AS
asin_code,

'R' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR'        AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR-AC'     AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR-N-DP'   AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR-NEW'    AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR-N-OLP'  AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL 
UNION ALL

  SELECT 
'NOFR-U-OLP'  AS
asin_code,

'N' 
AS buybox_winner,

'N' 
AS fast_track 
FROM DUAL


) 
/********************************************************* end asin_codes */

, 
asins 
AS

(

  SELECT DISTINCT

      fea.asin

    ,
fea.marketplace_id

    ,
fea.gl_product_group

    ,
fea.treatment_name


  FROM
fma_analytics_ddl.fma_experiments_asin_list fea


  WHERE
fea.marketplace_id 
IN ({MARKETPLACE_ID})

      AND
fea.experiment_name 
= 
'{FREE_FORM}'


) 
/*********************************************************      end asins */


, 
glanceviews 
AS

(

  SELECT

      gvm.asin

    ,
gvm.snapshot_day

    ,
ac.buybox_winner 
AS channel

    ,
asins.gl_product_group

    ,
asins.treatment_name

    ,
SUM(NVL(gvm.glance_view_count,

0)) 
AS gv

    ,
SUM(NVL(gvm.any_ft_gv_count,

0  )) 
AS ft_gv


  FROM
d_daily_asin_gv_metrics gvm


  INNER JOIN asins

    ON  gvm.asin
= 
asins.asin

    AND
gvm.marketplace_id 
= asins.marketplace_id


  INNER JOIN asin_codes ac

    ON  gvm.asin_code
= 
ac.asin_code

    AND
ac.buybox_winner 
IN ('R',

'F',

'M')


  WHERE
gvm.region_id      IN
({REGION_ID})

    AND
gvm.marketplace_id 
IN ({MARKETPLACE_ID})

    AND
gvm.snapshot_day 
>= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD') 
- 
30

    AND
gvm.snapshot_day 
<= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD')


  GROUP BY

      gvm.asin

    ,
gvm.snapshot_day

    ,
ac.buybox_winner

    ,
asins.gl_product_group

    ,
asins.treatment_name


) 
/********************************************************* end glanceviews */


, 
orders 
AS

(

  SELECT
/*+ use_hash(coi, asins, dmm) */

      coi.asin

    ,
coi.order_day

    ,
CASE

        WHEN dmm.is_retail 
= 
'Y' 
THEN 
'R'

        WHEN dmm.is_retail 
= 
'N' 
AND ((dmm.ssof_status_id
IN
(1,

5) 
AND dmm.ssof_contract_id 
IN (1,

3,

6,

3240)) 
AND (NVL(coi.fulfillment_manager_id,

-1) 
IN (-1,

1243749050,

832676903,

540342884,

923545551,

1000005578))) 
THEN 
'F'

        ELSE

'M'

      END 
AS channel

    ,
SUM(coi.quantity)
AS
units

    ,
SUM(coi.quantity
* 
coi.our_price) 
AS ops

    ,
SUM(coi.quantity
* 
coi.our_price +
coi.gift_wrap_charge 
+ coi.ship_charge)
AS
gms


  FROM
d_unified_customer_order_items coi


  INNER JOIN asins

    ON  coi.asin
= 
asins.asin


  INNER JOIN d_marketplace_merchants dmm

    ON  coi.merchant_customer_id
= 
dmm.merchant_customer_id

    AND
coi.marketplace_id 
= dmm.marketplace_id

    AND
dmm.marketplace_id 
IN ({MARKETPLACE_ID})


  WHERE
coi.region_id 
IN ({REGION_ID})

    AND
coi.marketplace_id 
IN ({MARKETPLACE_ID})

    AND
coi.order_day 
>= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD') 
- 
30

    AND
coi.order_day 
<= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD')

    AND
coi.order_item_level_condition 
<> 
6

    AND
NVL(coi.is_free_replacement,

'Y') 
<> 
'Y'

    AND
NVL(coi.is_liability,

'Y') 
<> 
'Y'

    AND
coi.quantity 
> 
0


  GROUP BY

      coi.asin

    ,
coi.order_day

    ,
CASE

        WHEN dmm.is_retail 
= 
'Y' 
THEN 
'R'

        WHEN dmm.is_retail 
= 
'N' 
AND ((dmm.ssof_status_id
IN
(1,

5) 
AND dmm.ssof_contract_id 
IN (1,

3,

6,

3240)) 
AND (NVL(coi.fulfillment_manager_id,

-1) 
IN (-1,

1243749050,

832676903,

540342884,

923545551,

1000005578))) 
THEN 
'F'

        ELSE

'M'

      END

)  /********************************************************* end orders */


, 
profits 
AS

(

  SELECT
/*+ use_hash(s,c,a,dmm)*/

      s.asin

    ,
s.order_day

    ,
CASE

        WHEN dmm.is_retail 
= 
'Y' 
THEN 
'R'

        WHEN dmm.is_retail 
= 
'N' 
AND ((dmm.ssof_status_id
IN
(1,

5) 
AND dmm.ssof_contract_id 
IN (1,

3,

6,

3240)) 
AND (NVL(s.fulfillment_manager_id,

-1) 
IN (-1,

1243749050,

832676903,

540342884,

923545551,

1000005578))) 
THEN 
'F'

        ELSE

'M'

      END 
AS channel

    ,
SUM(c.contribution_profit_amt)
AS
cp


  FROM
d_unified_cust_shipment_items s


  INNER JOIN o_wbr_cp_{REGION_CODE}
c

    ON  s.customer_shipment_item_id
= 
c.customer_shipment_item_id

    AND
c.marketplace_id 
IN ({MARKETPLACE_ID})

    AND
c.ship_day 
>= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD') 
- 
30

    AND
c.ship_day 
<= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD')


  INNER JOIN asins a

    ON  s.asin
= 
a.asin


  INNER JOIN d_marketplace_merchants dmm

    ON  s.merchant_customer_id
= 
dmm.merchant_customer_id

    AND
s.marketplace_id 
= dmm.marketplace_id

    AND
dmm.marketplace_id 
IN ({MARKETPLACE_ID})


  WHERE
s.region_id 
IN ({REGION_ID})

    AND
s.marketplace_id 
IN ({MARKETPLACE_ID})

    AND
s.order_day 
>= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD') 
- 
30

    AND
s.order_day 
<= TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD')

    AND
s.ship_day  >=
TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD') 
- 
30

    AND
s.ship_day  <=
TO_DATE('{RUN_DATE_YYYYMMDD}',

'YYYYMMDD')

    /* filter free replacements */

    AND
NVL(s.is_free_replacement_order,

'Y') 
<> 
'Y'


  GROUP BY

      s.asin

    ,
s.order_day

    ,
CASE

        WHEN dmm.is_retail 
= 
'Y' 
THEN 
'R'

        WHEN dmm.is_retail 
= 
'N' 
AND ((dmm.ssof_status_id
IN
(1,

5) 
AND dmm.ssof_contract_id 
IN (1,

3,

6,

3240)) 
AND (NVL(s.fulfillment_manager_id,

-1) 
IN (-1,

1243749050,

832676903,

540342884,

923545551,

1000005578))) 
THEN 
'F'

        ELSE

'M'

      END

)   /********************************************************* end profits */



SELECT

    g.asin

  ,
g.channel

  ,
g.snapshot_day 
AS str_day

  ,
g.gl_product_group

  ,
g.treatment_name

  ,
g.gv

  ,
g.ft_gv

  ,
NVL(o.units,

0) 
AS units

  ,
NVL(o.ops,

0)   AS
ops

  ,
NVL(o.gms,

0)   AS
gms

  ,
NVL(p.cp,

0)    AS
cp


FROM
glanceviews g


LEFT OUTER JOIN orders o

  ON  g.asin
= 
o.asin

  AND
g.snapshot_day 
= o.order_day

  AND
g.channel 
= o.channel


LEFT OUTER JOIN profits p

  ON  g.asin
= 
p.asin

  AND
g.snapshot_day 
= p.order_day

  AND
g.channel 
= p.channel


;
