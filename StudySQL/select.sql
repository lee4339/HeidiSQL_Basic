#<select>
SELECT
	um_code,
	username,
	PASSWORD,
	NAME,
	email,
	create_date,
	update_date
FROM
	user_mst;
	
	
#모든 컬럼 조회
SELECT
	*
FROM
	user_mst;
	
	
#조회 조건(where) --> where에 찾고자하는 정보입력
SELECT
	*
FROM
	user_mst
WHERE
	NAME = '이건호' AND email = 'geonho2@gmail.com';
	# or도 가능
	
#조회 조건(like) --> 어떤값이 포함된걸 찾아달라
SELECT
	*
FROM
	user_mst	
WHERE
	email LIKE '%dddd%' or NAME LIKE '%건호';	
	
#그룹(group by)
SELECT
	NAME,
	COUNT(NAME)
FROM
	user_mst
GROUP BY
	NAME;
	
	