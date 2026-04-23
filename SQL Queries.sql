%sql create or replace table all_restaurants  AS SELECT * FROM google_drive.rest ...

%sql select count(*) from all_restaurants   

%sql  select * from all_restaurants  

%sql DESCRIBE all_restaurants 

%sql SELECT count(*) ,count(DISTINCT *) AS duplicate FROM all_restaurants 

%python display(spark.table("all_restaurants").summary()) 

%sql SELECT * FROM all_restaurants LIMIT 1000 

%sql -- add column mapping to can dalete cols or edit cols (type / name) alter t ...

%sql alter table all_restaurants drop column _line, _fivetran_synced; 

DESCRIBE all_restaurants; 

select max(order_date), min(order_date) from all_restaurants 

select max(hour), min(hour) from all_restaurants 

select distinct category from all_restaurants 

select distinct item_name from all_restaurants 

select category, item_name, price  from all_restaurants where price= (select max ...

select category, item_name, total_amount  from all_restaurants where total_amoun ...

select max(discount), min(discount) from all_restaurants 

SELECT discount, COUNT(*) AS num_orders FROM all_restaurants GROUP BY discount 

SELECT item_name, max(quantity*discount) as total_discount, COUNT(*) AS num_orde ...

SELECT * FROM all_restaurants LIMIT 100 

SELECT is_weekend,        AVG(total_amount) AS avg_amount,        AVG(discount)  ...