{{
  config(
    materialized='incremental',
    incremental_strategy='merge',
	unique_key='C_CUSTKEY'
  )
}}
with stg_customer as (
select 	C_CUSTKEY,
        C_NAME,	
        C_ADDRESS,
	    C_MKTSEGMENT,
	    C_NATIONKEY
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
)
select * from stg_customer