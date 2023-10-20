use airport;

select id, service_class, price
from tickets
where
    (service_class = 'Economy' and price between 10000 and 11000)
    or (service_class = 'PremiumEconomy' and price between 20000 and 30000)
    or (service_class = 'Business' and price > 100000);
    
SELECT side_number,
  CASE
    WHEN production_year < 2000 THEN 'Old'
    when production_year between 2000 and 2010 then 'Mid'
    else 'New' 
  end as age
from airliners
where distance <= 10000
order by age;

SELECT id, trip_id,
  CASE
    WHEN service_class = 'Economy' THEN price * 0.85
    WHEN service_class = 'Business' THEN price * 0.9
    WHEN service_class = 'PremiumEconomy' THEN price * 0.8
    ELSE price
  END AS newprice
FROM tickets
WHERE trip_id IN ('LL4S1G8PQW', '0SE4S0HRRU', 'JQF04Q8I9G');

use hr;

select * 
from employees
where first_name like 'D%'
order by last_name;






