-- 1.1)
start transaction;
SELECT * FROM shop.users
where id = 1;
insert ignore into sample.users select 
	*
from shop.users
where id = 1;
commit;

-- 1.2)
use shop;
create or replace view prod_cat as select 
	products.id,
    products.`name`,
    catalogs.`name` as catalog_name
from shop.products, shop.catalogs
where products.catalog_id = catalogs.id;
select * from prod_cat;
-- Следующие 3 строки сделал для того, чтобы снять use с текущей базы.
CREATE DATABASE UnselectingDB;
USE UnselectingDB;
DROP DATABASE UnselectingDB;

-- 1.3)
-- Использовал для примера таблицу created_at из shop.products. 
SELECT 
	id,
    name,
    created_at,
    date(created_at) in ('2018-08-01', '2016-08-04', '2018-08-16', '2018-08-17') as in_date_list
FROM shop.products
where month(created_at) = 8;

-- 1.4)
-- В отдельной таблице sample.products использовал данные из вашего дампа для shop, но изменил даты (сделал все разные, чтобы нагляднее сортировалось всё)
-- Нашел в итоге такое решение, через вложенный select сделать ограничение.
delete from sample.products
where created_at not in (
	select * from (
		SELECT created_at FROM sample.products
		order by created_at desc
		limit 5
    ) as newest
);
SELECT * FROM sample.products;

-- 3.1)
delimiter $$
drop function if exists hello$$
create function hello()
returns text deterministic
begin
declare h int default hour(now());
case
	when h >= 6 and h < 12 then
		return 'Доброе утро!';
	when h > 12 and h < 18 then
		return 'Добрый день!';
    when hour(now()) >= 18 and hour(now()) < 24 then
		return 'Доброго вечера!';
    when hour(now()) >= 0 and hour(now()) < 6 then
		return 'Доброй ночи!'; 
    end case;  
end$$
delimiter ;
select hello() as `Hello!`;

-- 3.2)
DROP TRIGGER IF EXISTS `sample`.`products_BEFORE_INSERT`;

DELIMITER $$
USE `sample`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sample`.`products_BEFORE_INSERT` BEFORE INSERT ON `products` FOR EACH ROW
BEGIN
	IF isnull(new.`name`) and isnull(new.`description`) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'One of this parameters (name, description) must be not NULL.';
	END IF;

END$$

DROP TRIGGER IF EXISTS `sample`.`products_BEFORE_UPDATE`$$

USE `sample`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sample`.`products_BEFORE_UPDATE` BEFORE UPDATE ON `products` FOR EACH ROW
BEGIN
	IF (isnull(new.`name`)) and (isnull(new.`description`)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'One of this parameters (name, description) must be not NULL.';
	END IF;
END$$
DELIMITER ;

-- 3.3)
-- Решение через фенкцию, где с помощью 2-х переменных вычисляется каждый последующий элемент последовательности, а 3-я - используется как счетчик.
delimiter $$
drop function if exists fibonacci$$
create function fibonacci(n int)
returns numeric(38) deterministic
begin	
	declare a, b, i numeric(38) default 1;
    if n > 2 then
    set i := 3;    
	while i <= n do
        set b := a + b;
        set a := b - a;
		set i := i + 1;
	end while;
	return b;
    else
		return 0;
	end if;
end$$
delimiter ;
select fibonacci(10) ;

-- Решение через процедуру, где строится 3 столбца (номер числа, число, следующее число), а строки добавляются через UNION и выводится последнее число.

delimiter $$
drop procedure if exists fibonacci$$
create procedure fibonacci(n int)
begin	
with recursive fib as
(
  select  1 as fn, 1 as f, 1 as next_f
  union all
  select fn+1, next_f, f+next_f from fib where fn < n
)
select max(f) from fib;
end$$
delimiter ;
call fibonacci(10) ;
