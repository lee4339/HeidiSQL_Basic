/*
	DML
	CRUD
	C = insert
	R = select
	U = update
	D = delete
*/

# insert 
INSERT INTO 
	user_mst
	VALUES(
	0,
	'dddd',
	'1234'
	);
	
# 데이터 여러개를 한번에 insert 하는 방법
INSERT INTO 
	user_mst
	VALUES(
	0,
	'eeee',
	'1234'
	),(
	0,
	'ffff',
	'1234'
	),(
	0,
	'gggg',
	'1234'
	);
	
# select

SELECT
	*
FROM
	user_mst
WHERE
#	user_code > 3 
#	AND user_code < 6;
#	user_id = 'aaaa';
#  user_id LIKE '%a%';  # 포함되는 것 찾기
#	user_id IN('aaaa', 'bbbb'); # 둘중 하나를 가지고 있으면 
#	user_id = 'aaaa'
#	OR user_id ='bbbb';

# where 서브쿼리
	user_id IN(
		select
			user_id
		from
			user_mst
		where
			user_code > 2
			AND user_code < 6
	);
	
	
# update

UPDATE 
	user_mst
SET
	user_password = '1234',
	user_id = 'ffff'
WHERE
	user_code = (
		select
			user_code
		FROM
			user_mst
		where
			user_id = 'ffff4444'
	);
	
	
# delete
DELETE
FROM
	user_mst
WHERE
	user_code = 4

   
