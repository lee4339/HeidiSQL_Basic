# <insert>

INSERT 
INTO
	user_mst(
		um_code, 
		username, 
		PASSWORD, 
		NAME, 
		email, 
		create_date, 
		update_date
	)
VALUES
	(
		0,
		'geonho',
		'1234',
		'일건호',
		'geonho1@gmail.com',
		NOW(),
		NOW()
	)
;

INSERT 
INTO
	user_mst
VALUES
	(
		0,
		'geonho2',
		'1235',
		'이건호',
		'geonho2@gmail.com',
		NOW(),
		NOW()
	)
;


INSERT 
INTO
	user_mst(
		um_code,
		username,
		PASSWORD,
		NAME,
		email,
		create_date,
		update_date
	)
VALUES
	(
		0,
		'aaaa',
		'1234',
		'삼건호',
		'aaaa@gmail.com',
		NOW(),
		NOW()
	)
;

INSERT INTO
	user_mst
VALUES(
	0,
	'bbbb',
	'1234',
	'사건호',
	'bbbb@gmail.com',
	NOW(),
	NOW()
);

INSERT INTO
	user_mst
VALUES(
	0,
	'cccc',
	'12345',
	'오건호',
	'cccc@gamil.com',
	NOW(),
	NOW()
),(
	0,
	'dddd',
	'123456',
	'육건호',
	'dddd@gamil.com',
	NOW(),
	NOW()
);