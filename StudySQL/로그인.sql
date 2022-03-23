/*
	username: geonho
	password: 1234
*/

SELECT
	COUNT(um.username) + COUNT(um2.password) AS login_flag
FROM
	user_mst um
	LEFT OUTER JOIN user_mst um2 ON(um2.um_code = um.um_code AND um2.password = '1234')
WHERE
	um.username = 'geonho';
	
SELECT
	um.um_code,
	um.username,
	
	um.password,
	um.name,
	um.email,
	ud.ud_code,
	ud.ud_profile_img_url,
	ud.ud_introduction,
	ud.ud_phone
FROM
	user_mst um
	INNER JOIN USER_dtl ud ON(ud.um_code = um.um_code)
WHERE
	um.username = 'geonho';
	