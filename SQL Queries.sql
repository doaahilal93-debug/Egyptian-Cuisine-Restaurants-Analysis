%sql create or replace table all_restaurants  AS SELECT * FROM google_drive.rest ...

%sql select count(*) from all_restaurants   

%sql  select * from all_restaurants  

%sql DESCRIBE all_restaurants 

%sql SELECT count(*) ,count(DISTINCT *) AS duplicate FROM all_restaurants 

display(spark.table("all_restaurants").summary()) 

%sql SELECT * FROM all_restaurants LIMIT 1000 