--question 1

select * from address
select * from customer

select first_name, last_name, district
from customer
inner join address 
on customer.address_id = address.address_id 
where district ='Texas';



select CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, DISTRICT
from customer 
full join address 
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where DISTRICT = 'Texas';


--question 2
select * from customer 
select* from payment 

select first_name, last_name, amount
from customer 
full join payment 
on customer.customer_id = payment.customer_id 
where amount > 6.99

--question 3

select * from customer
select *from payment

select first_name, last_name
from customer 
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having sum (amount) > 175.00
	order by sum(amount)
)


--question 4

select * from city
select * from customer
select * from address
select * from country
select first_name, last_name
from customer
full join address 
on customer.address_id = address.address_id 
full join city 
on address.city_id = city.city_id 
full join country 
on city.country_id = country.country_id
where country = 'Nepal'

--question 5

select * from staff
select * from payment 

select first_name, last_name
from  payment 
full join staff 

--tried but am confused 






--question 6
select * from film
select rating 
from film
group by rating 


--question 7
select *from payment 
select *from customer
select first_name, last_name
from customer 
where customer_id in (
	select customer_id 
	from payment
	group by customer_id, payment.amount 
	having (amount) = 6.99
	order by sum(amount)
)

--dont think this is correct but i gave my all 

--question 8
select * from rental
select * from payment
select amount 
from payment 
where amount = 0





