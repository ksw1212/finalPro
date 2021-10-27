package kr.co.onoff.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserBean {

	private int user_idx; // 회원코드
	private String user_auth_id; //	권한코드
	private String user_email; // 이메일
	private String user_password; // 비밀번호
	private String user_password2; // 비밀번호 확인
	private String user_name; // 회원이름
	private String user_tel; //	회원전화번호
	private String user_addr1; // 회원자택주소
	private String user_addr2; // 회원상세주소
	private String user_auth_key; // 인증키
	private String user_auth_ok; //	인증여부
	private String user_newpassword;

    
    private boolean userIdExist;
	private boolean userLogin;
	
	public UserBean() {
		this.userIdExist=false;
		this.userLogin=false;
	}
	
}