#<select>
SELECT
	region_id,
	COUNT(region_id)
FROM
	countries
GROUP BY
	region_id
;

#정렬(order by)
SELECT
	*
FROM
	countries
ORDER BY
	region_id,
	AREA DESC		# --> 역순정렬
LIMIT 1;				# --> 위에서 부터 ?개의 값을 가져온다.

#전체 응용
SELECT
	country_id,
	NAME,
	AREA,
	region_id
FROM
	countries
WHERE
	region_id IN (2, 4, 8)
ORDER BY
	region_id,
	AREA DESC;