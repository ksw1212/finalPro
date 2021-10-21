package kr.co.onoff.beans;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EmployeeBean {

	private String emp_id;	//사번
	private int	emp_user_idx;	//	회원코드
	private String	user_auth_id;	//	권한코드
	private String extension_tel;	//	내선번호
	private Date join_date;	//	입사일자
	private int	basic_vac_total;	//	기본휴가갯수
	private int special_vac_total;	//	특별휴가갯수
	private String position_name;	//	직급이름
	private int	dep_idx;	//	부서코드
	private String status;	//	근로상태
	private int company_comp_idx;	//	회사코드

	
}
