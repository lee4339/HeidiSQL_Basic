INSERT INTO
	board_mst
VALUES(
	0,
	'데이터 베이스 수업',
	'geonho',
	0,
	NOW(),
	NOW()
);



INSERT INTO
	board_dtl
VALUES(
	0,
	(SELECT
		ifnull(MAX(bm_code), 1) AS bm_code
	FROM
		board_mst
	),
	'데이터 베이스 CRUD 실습
	create(insert)
	read(select)
	update(update)
	delete(delete)',
	NOW(),
	NOW()
);



INSERT INTO
	board_img
VALUES(
	0,
	(SELECT
		ifnull(MAX(bm_code), 1) AS bm_code
	FROM
		board_mst
	),
	'create예제 캡처1.png',
	NOW(),
	NOW()
),
(	0,
	(SELECT
		ifnull(MAX(bm_code), 1) AS bm_code
	FROM
		board_mst
	),
	'read예제 캡처1.png',
	NOW(),
	NOW()
),
(	0,
	(SELECT
		ifnull(MAX(bm_code), 1) AS bm_code
	FROM
		board_mst
	),
	'update예제 캡처1.png',
	NOW(),
	NOW()
),
(	0,
	(SELECT
		ifnull(MAX(bm_code), 1) AS bm_code
	FROM
		board_mst
	),
	'delete예제 캡처1.png',
	NOW(),
	NOW()
);