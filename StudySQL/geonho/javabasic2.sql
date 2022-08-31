SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON(ud.usercode = um.usercode)
WHERE
	um.username = 'ccc';