package kr.co.onoff.beans;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AdminBean {

	private String admin_id; //관리자 이메일
	private String admin_pw; //관리자 비밀번호
	private String admin_auth_id; //권한코드 fk

	
}
