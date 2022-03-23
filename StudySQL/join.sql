/*
join(조인)
둘 이상의 테이블을 연결해서 데이터를 검색하는 방법
연결하려면 테이블들이 적어도 하나의 컬럼을 공유하고 있어야한다.
*/

SELECT
	*
FROM
	countries c
	left outer join regions r ON(r.region_id = c.region_id)
	LEFT OUTER JOIN continents ct ON(ct.continent_id = r.continent_id)
;

SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON(ud.um_code = um.um_code)
;

SELECT
	*
FROM
	user_dt1
WHERE
	um_code = 100;
	
	
SELECT
	*
FROM
	product_mst pm
	LEFT OUTER JOIN category_mst cm ON(cm.ctg_code = pm.ctg_code)
WHERE
	#pm.pdm_name LIKE '%텀블러';
	cm.ctg_code = 1
ORDER BY
	pm.pdm_code desc;