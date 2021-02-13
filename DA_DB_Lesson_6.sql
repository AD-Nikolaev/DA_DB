-- 1.2)
-- Хотел найти через max(count(from_users_id) as count_messages) но он выдавал ошибку, что некорретно применил функцию группировки.
-- В итоге сделал через сортировку (первым и единственным показывает друга с наибольшим количеством сообщений).
SELECT 
	*,
    count(from_users_id) as count_messages
FROM vk.messages
 where from_users_id in (select
	 if(from_users_id = 1, to_users_id, from_users_id) as friend_id
	 from vk.friend_requests
 where (from_users_id = 1 or to_users_id = 1) and `status` = 1) 
group by from_users_id
order by count_messages desc
limit 1;

-- 1.3)
-- Нашёл возраст юзеров, затем отсортировал по нему и ограничил 10 штуками (получил 10 самых молодых).
-- С помощью 2-х вложенных Select подсчитал количество лайков и репостов (status = 1 или 2) для этих юзеров.
SELECT 
     users_id,
     concat_ws(' ', firstname, lastname) as name,
     birthday,
     timestampdiff(year, birthday, NOW()) as age,
     (select count(users_id) from vk.likes_media where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2)) as count_media,
     (select count(users_id) from vk.likes_posts where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2)) as count_posts
FROM vk.profiles
order by age
limit 10;

-- 1.4)
-- В начале я заметил, что у меня некоторые пользователи были с полом 'x', ну и решил изменить на случайный (m или f).
update vk.profiles set
	gender = elt(0.5 + rand() * 2, 'm', 'f')
where gender = 'x';

SELECT 
     gender,
     sum(
     (select count(users_id) from vk.likes_media where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2)) +
     (select count(users_id) from vk.likes_posts where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2))) as count_likes
FROM vk.profiles
group by gender;

-- 1.5)
-- Подсчитал количество лайков, постов, групп (где юзер админ), групп (где он состоит), сообщений, загруженных медиа - activity
-- Отсортировал по увеличению activity и вывел 10 юзеров.
SELECT 
     users_id,
     concat_ws(' ', firstname, lastname) as name,
     sum(
     (select count(users_id) from vk.likes_media where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2)) +
     (select count(users_id) from vk.likes_posts where vk.profiles.users_id = users_id and (`status` = 1 or `status` = 2)) +
     (select count(from_users_id) from vk.messages where vk.profiles.users_id = from_users_id) +
     (select count(users_id) from vk.posts where vk.profiles.users_id = users_id) +
     (select count(admin_id) from vk.communities where vk.profiles.users_id = admin_id) +
     (select count(users_id) from vk.users_communities where vk.profiles.users_id = users_id) +
     (select count(users_id) from vk.media where vk.profiles.users_id = users_id)) as activity
FROM vk.profiles
group by users_id
order by activity
limit 10;
