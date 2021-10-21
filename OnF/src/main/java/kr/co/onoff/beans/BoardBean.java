package kr.co.onoff.beans;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BoardBean {

	
	private int board_content_idx;//게시글번호
	private int board_user_idx;//작성회원코드
	private String board_writer;//작성자이름
	private String board_title;//게시글제목
	private String board_content;//게시글내용
	private Date board_date;//작성일자
	private int view_cnt;//조회수
	private String onf_user_user_auth_id;//작성회원권한코드

	
	
	
	
	
	
	
	
	
	


	
}
