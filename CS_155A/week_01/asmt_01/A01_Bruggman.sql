/* Rebecca Bruggman */

\W

/* switch to correct db */
use a_testbed;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
Delete
From a_testbed.zoo_2015
Where z_id > 100;

Select *
From a_testbed.zoo_2015;

/*  TASK 02 */
Insert Into a_testbed.zoo_2015  (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
Values (123,'Pusheen','Cat', 15000.00, '1987-11-01','2010-08-20'),
(456, 'Donald', 'Zebra', 780.00, '2010-01-17', '2013-06-15'),
(789, 'Sebastian', 'Crab', 32.00, '1990-04-05', '2009-04-10');

/*  TASK 03 */
Insert Into a_testbed.zoo_2015 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) 
Values(132,'Charlie','Platypus', 4348.00, '2014-06-10','2015-08-15'),
(154,'Zoey','Tiger', 8000.00, '2014-08-12','2016-01-01'),
(186,'Sophia','Meerkat', 1860.00, '2014-07-28','2014-10-31'),
(501, 'Snoopy', 'Dog', 1.00, '1951-02-02', '1951-02-02' ),
(502, 'Tweety', 'Bird', 0.10, '1942-01-02', '1942-01-01' ),
(503, 'Tiny', 'Hippopotamus', 5000.00, '2011-06-06', '2014-03-04'),
(110,'Eric','Bear',4000.00,'2015-01-01','1990-01-01'),
(120,'Ryan','Puma',6000.00,'2015-01-02','1978-04-21'),
(130,'Becky','Manatee',8000.00,'2015-01-03','1980-05-12');
/* TASK 04 */
Select z_name, z_type, z_id, z_cost, z_dob, z_acquired
From a_testbed.zoo_2015;

/* TASK 05 */
SELECT z_type, z_name, z_cost
from a_testbed.zoo_2015
order by z_type, z_name;

/* TASK 06 */
select z_id, z_name, z_dob
from a_testbed.zoo_2015
where z_type='Zebra';

/* TASK 07 */
show tables;

/* TASK 08 */
desc zoo_2015;

/* TASK 09 */
show variables like 'char%';
