SELECT
	/*COUNT(um.username),
	COUNT(um2.password)
	*/
	COUNT(um.username) + COUNT(um2.password) AS flag # --> as (flag) 컬럼명 지정
FROM
	user_mst um
	LEFT OUTER JOIN user_mst um2 ON(um2.um_code = um.um_code AND um2.password = '12341234')
WHERE
	um.username = 'apple'
;

SELECT
	*
FROMuser_mst
	user_mst
WHERE
	username = 'apple'
AND PASSWORD = '12341234'
;