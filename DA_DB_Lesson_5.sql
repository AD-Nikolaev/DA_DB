-- 1.1)
-- Сделал каждое 5-е значение в updated_at = null.
update vk.`profiles` set
updated_at = null
where users_id % 5 = 0;
SELECT * FROM vk.`profiles`;
-- Если значение в updated_at = null, то заменить его на текущее время.
update vk.`profiles` set
updated_at = now()
where isnull(updated_at);
SELECT * FROM vk.`profiles`;

-- 1.2)
-- Поменял даты так, чтобы можно было поменять формат с varchar на datetime.
-- Через str_to_date почему-то не вышло.
update vk.users_test set
	updated_at = concat(concat_ws('.', right(left(updated_at,10),4), right(left(updated_at,5),2), left(updated_at,2)), right(created_at,5)),
	created_at = concat(concat_ws('.', right(left(created_at,10),4), right(left(created_at,5),2), left(created_at,2)), right(created_at,5));	
SELECT * FROM vk.users_test;

-- 1.3)
SELECT * FROM storehouses_products
order by `value` = 0, `value`;
 
-- 1.4*)
SELECT 
	users_id,
	concat_ws(' ', firstname, lastname) as name,
	birthday,
	monthname(birthday) as month_name

FROM vk.profiles 
where month(birthday) = 5 or month(birthday) = 6
order by month(birthday), birthday;

-- 1.5*)
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
order by field(id, 5, 1, 2);

-- 2.1)
SELECT 
     avg(timestampdiff(year, birthday, NOW())) as average_ages
FROM vk.profiles;

-- 2.2)
SELECT 
     users_id,
     concat_ws(' ', firstname, lastname) as name,
     birthday,
     dayname(concat_ws('-', year(now()), right(birthday,5))) as birthday_day_this_year
FROM vk.profiles;

-- 2.3)
-- Для примера нашел произведение от 1 до 6 столбца id из таблицы storehouses_products.
SELECT 
    id,
    round(exp(sum(ln(id))))
FROM storehouses_products;
