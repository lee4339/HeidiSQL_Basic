UPDATE
	user_mst
SET
	PASSWORD = '1234'
WHERE
	username = 'geonho';
	
UPDATE
	user_dtl
SET
	ud_profile_img_url = '기본프로필.png',
	ud_phone = '010-9307-4084'
WHERE
	um_code = (select
						um_code
					from
						user_mst
					where
						username = 'geonho'); # --> 서브커리