CREATE TABLE myvectors (
  product_name text CHARACTER SET utf8 COLLATE utf8_general_ci,
  review_title text CHARACTER SET utf8 COLLATE utf8_general_ci,
  review_text text CHARACTER SET utf8 COLLATE utf8_general_ci,
  vector blob,
  username text CHARACTER SET utf8 COLLATE utf8_general_ci,
  SORT KEY __UNORDERED ()
  , SHARD KEY () 
) AUTOSTATS_CARDINALITY_MODE=INCREMENTAL AUTOSTATS_HISTOGRAM_MODE=CREATE AUTOSTATS_SAMPLING=ON SQL_MODE='STRICT_ALL_TABLES'


SELECT * FROM myvectors

DROP TABLE myvectorspdf

CREATE TABLE   myvectorspdf (
    resume_data text CHARACTER SET utf8 COLLATE utf8_general_ci,
    vector blob,
    SORT KEY __UNORDERED ()
  , SHARD KEY () 
) AUTOSTATS_CARDINALITY_MODE=INCREMENTAL AUTOSTATS_HISTOGRAM_MODE=CREATE AUTOSTATS_SAMPLING=ON SQL_MODE='STRICT_ALL_TABLES'

SELECT * FROM myvectorspdf 



