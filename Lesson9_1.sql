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
	date(created_at) as date,
    if(month(created_at) = 8, 1, 0) as in_august
FROM shop.products;

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