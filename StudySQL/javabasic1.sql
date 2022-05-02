#
/*
DML(데이터를 관리)
insert	C
select	R
update	U
delete	D
*/

#insert
/*SQL은 대소문자 구별안함, 문자 문자열 구분없기에 ''로  통일 */
INSERT INTO 
	user_mst(
		usercode, 
		email, 
		NAME, 
		username, 
		PASSWORD, 
		create_date, 
		update_date
	) 
VALUES(
	0, 
	'a@naver.com',
	'일번', 
	'aaa', 
	'1234', 
	NOW(), 
	NOW()
);

INSERT INTO 
	user_mst
VALUES(
	0,
	'b@gmail.com',
	'이번',
	'bbb',
	'1234',
	NOW(),
	NOW()
);


INSERT INTO 
	user_mst
VALUES(
	0,
	'c@gmail.com',
	'삼번',
	'ccc',
	'1234',
	NOW(),
	NOW()
),(
	0,
	'd@kakao.com',
	'사번',
	'ddd',
	'1234',
	NOW(),
	NOW()
),(
	0,
	'e@gmail.com',
	'오번',
	'eee',
	'1234',
	NOW(),
	NOW()
);


#update
UPDATE
	user_dtl
SET
	address = '울산광역시',
	phone = '010-2222-2222',
	gender = 1
WHERE
	usercode = 14;
	

#select / 보고싶은거 선택
SELECT
	usercode,
	username,
	password
FROM
	user_mst
WHERE #조건문
	usercode > 3
AND username = 'ddd';


SELECT
	*
FROM
	user_dtl
WHERE
	phone LIKE '%1111%';


#subquery
SELECT
	*
FROM
	user_dtl
WHERE
	usercode = (SELECT
						usercode
					FROM
						user_mst
					WHERE
						username = 'ccc');
	


#join / subquery보다 속도가 빠름
SELECT
	um.usercode,
	um.email,
	um.name,
	um.username,
	um.password,
	ud.address,
	ud.phone,
	ud.gender,
	um2.usercode
FROM
	user_mst um 
	LEFT OUTER JOIN user_dtl ud ON(ud.usercode = um.usercode)
	LEFT OUTER JOIN(SELECT usercode, username FROM user_mst) um2 ON(um2.usercode = um.usercode)
WHERE
	um.username ='ccc';
	
	
SELECT
	NAME,
	COUNT(NAME)
FROM
	user_mst
GROUP BY #같은 값을 가진 행을 그룹
	name
ORDER BY #정렬
	NAME desc;
	
SELECT
	*
FROM
	user_mst
ORDER BY
	usercode DESC; #desc 역순 정렬
	
	
#delete
DELETE
FROM
	user_mst
WHERE
	usercode = 14;

