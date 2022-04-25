select * 
into revised_vine_table
from vine_table
where total_votes >=20;

select *
into helpful_vine_table
from revised_vine_table
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;


select *
into vine_paid_table
from helpful_vine_table
where vine='Y';

select *
into vine_unpaid_table
from helpful_vine_table
where vine='N';

select count(star_rating), vine
into five_star_tables
from helpful_vine_table
where star_rating=5
group by vine;



select count(vine) as total_num 
--,count(star_rating) as total_fivestar
--,100*((select count(star_rating) from vine_tables)/(select count(vine) from vine_tables)) as percentage, vine
--into total_reviewNum_fivestarNum
from vine_table;

select count(star_rating) as total_fivestar
--,100*((select count(star_rating) from vine_tables)/(select count(vine) from vine_tables)) as percentage, vine
--into total_reviewNum_fivestarNum
from vine_table
where star_rating=5;

select 
CAST(((select count(star_rating) from vine_table where star_rating=5)/count(*)) as float) as percentage, vine
from vine_table
group by vine;

select * from five_star_tables;

select vine, sum(case when star_rating=5 then 1 else 0 end)/count(*)::float as percentage
from vine_table
group by vine;


