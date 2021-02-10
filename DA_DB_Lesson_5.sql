update vk.users_test set
	updated_at = concat(concat_ws('.', right(left(updated_at,10),4), right(left(updated_at,5),2), left(updated_at,2)), right(created_at,5)),
	created_at = concat(concat_ws('.', right(left(created_at,10),4), right(left(created_at,5),2), left(created_at,2)), right(created_at,5));
	
SELECT * FROM vk.users_test;
