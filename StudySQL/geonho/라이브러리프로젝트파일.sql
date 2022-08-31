select
			rental_code,
			ud.bookcode,
			bookname,
			rental_date,
			return_date,
			rental_status
		from
			rental_book um
			left outer join book_mst ud on(ud.bookcode = um.bookcode)
		where
			rental_status = 1
	
user_mstuser_mst