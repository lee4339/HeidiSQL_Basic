/*
	5번 게시글 내용 수정
	기존 글에서 내용 추가
	DML 실습
*/
UPDATE
	board_dtl
SET
	bd_contents = CONCAT(bd_contents, '\n', 'DML 실습') # --> concat은 문자열을 합쳐준다.
WHERE
	bm_code = 5;
	
	
UPDATE
	board_img
SET
	bi_img_url = REPLACE(bi_img_url, '1', '2') # --> 부분 바꿈
WHERE
	bm_code = 5;
	