SELECT
	*
FROM
	user_mst
WHERE
	username = 'aaaa';
	
	
SELECT
	COUNT(um.username) + COUNT(um2.password) AS signin_flag
FROM
	user_mst um
	LEFT OUTER JOIN user_mst um ON(um2.user_code = um.user_code AND um2.password = '1234')
WHERE
	um.username = 'aaaa';
	
INSERT INTO
	user_mst(email, NAME, username, PASSWORD, create_date, update_date)
VALUES(
	?,
	?,
	?,
	?,
	NOW(),
	NOW()
)