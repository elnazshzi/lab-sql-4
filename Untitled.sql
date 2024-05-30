-- 1
select distinct rating from sakila.film;

-- 2 
select count(release_year) from sakila.film;
select release_year from sakila.film;

-- 3
select title from sakila.film
where title like '%ARMAGEDDON%';

-- 4 
select title from sakila.film
where title like '%APOLLO%';

-- 5 
select title from sakila.film
where  title like '%APOLLO';

-- 6 
select title from sakila.film
where title regexp '\\bDATE\\b';

-- 7
select title, (length(title)) as title_length
from sakila.film
order by title_length desc
limit 10;

-- 8 
select title, length from sakila.film 
order by length desc
limit 10;

-- 9
select count(special_features) from sakila.film
where special_features LIKE '%Behind the Scenes%';

-- 10
select release_year, count(title) from sakila.film
group by release_year
order by release_year,title;


select * from sakila.film
order by release_year ASC, title ASC;








