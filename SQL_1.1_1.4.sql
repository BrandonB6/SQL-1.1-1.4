select last_name
from actor
where last_name like 'Wahlberg';
-- 2 actors with last name wahlberg

select amount
from payment
where 3.99 <= amount and amount <= 5.99;
-- 0 

select film_id, sum(inventory_id)
from inventory
group by film_id
order by sum(inventory_id) desc;
-- film id 1,000

select count(last_name) 
from customer
where last_name = 'William';
-- 0 


select staff_id, count(payment_id)
from payment
group by staff_id
order by count desc;
-- staff id 2

select count(distinct district)
from address
order by count desc;
-- 378

select film_id, count(actor_id)
from film_actor 
group by film_id
order by count desc;
-- film_id 508 with 15 actors

select store_id, count(last_name)
from customer
where last_name like '%es'
group by store_id;
-- 13

select amount, count(customer_id)
from payment
where customer_id between 380 and 430
group by amount
having count(customer_id) > 200;

select rating, count(film_id)
from film
group by rating
order by count(film_id) desc;


