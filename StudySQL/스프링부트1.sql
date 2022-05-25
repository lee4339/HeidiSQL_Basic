select
	bm.board_code,
	bm.board_title,
	bm.board_content,
	bm.board_writer,
	um.username as board_username,
	bm.board_count,
	(select
		COUNT(*)
	from
		board_mst) AS board_count_all,
	bm.create_date,
	bm.update_date
	
from
	board_mst bm
	left outer join user_mst um on(um.user_code = bm.board_writer)
ORDER BY
	board_code DESC
LIMIT 0, 5;


select
			*,
			ud.profile_img_url
		from
			user_mst um
			left outer join user_dtl ud on(ud.user_code = um.user_code)