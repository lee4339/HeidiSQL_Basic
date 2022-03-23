SELECT
	bm.bm_code,
	bm.bm_title,
	bd.bd_contents,
	bm.bm_wirter,
	bi.bi_img_url,
	bm.bm_count
FROM
	board_mst bm
	LEFT OUTER JOIN board_dtl bd ON(bd.bd_code = bm.bm_code)
	LEFT OUTER JOIN board_img bi ON(bi.bi_code = bm.bm_code)
	
WHERE
		bm.bm_code = 3;