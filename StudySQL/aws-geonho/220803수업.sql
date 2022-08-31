INSERT INTO
	product_mst
	VALUES(
		0,
		"스타벅스 블루 텀블러",
		1,
		28000
	),(
		0,
		"스타벅스 화이트 머그컵",
		2,
		15000
	),(
		0,
		"스타벅스 아이스 아메리카노",
		3,
		4000
	),(
		0,
		"스타벅스 블랙 머그컵",
		2,
		17000
	),(
		0,
		"스타벅스 핑크 텀블러",
		1,
		20000
	);


UPDATE
	product_mst
SET 
	product_price = product_price + 10000
WHERE
	product_name LIKE '%텀블러';
			
			
			

SELECT
	pm.product_code,user_mst
	pm.product_name,
	pm.product_category,
	cm.category_name,
	pm.product_price
FROM
	product_mst pm
	LEFT OUTER JOIN category_mst cm ON(cm.category_code = pm.product_category);
	
	
	
	

INSERT INTO
	order_mst
	VALUES(
		0,
		4,
		4,
		NOW()
	);
	
	
	
	
	
SELECT
	om.order_code,
	om.order_user,
	um.user_id,
	om.order_product,
	pm.product_name,
	pm.product_category,
	cm.category_name,
	pm.product_price,
	om.order_datetime
FROM
	order_mst om
#	LEFT OUTER JOIN user_mst um ON(um.user_code = om.order_user)
#	LEFT OUTER JOIN product_mst pm ON(pm.product_code = om.order_product)
#	LEFT OUTER JOIN category_mst cm ON(cm.category_code = pm.product_category);
	INNER JOIN user_mst um ON(um.user_code = om.order_user)
	INNER JOIN product_mst pm ON(pm.product_code = om.order_product)
	INNER JOIN category_mst cm ON(cm.category_code = pm.product_category);   # inner은 값이 들어있는 것만 가져옴 null값 제외
	
WHERE
	om.order_code > 1
	AND pm.product_price > 20000;
	
	
	
	
	
DELETE 
FROM
	user_mst
WHERE
	user_code = 26;