package kr.co.onoff.beans;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class VacationBean {
	
	//vacation_group
	private int vac_group_idx; //휴가그룹코드
	private String vac_group_name; //휴가그룹이름

	//vacation_request
	private int vac_req_idx; //휴가요청코드
	private int req_vac_type_idx; //휴가유형코드
	private String req_vac_mem_idx; //신청자사번
	private Date req_date; //요청일자
	private String req_title; //요청제목
	private String req_reason; //요청사유
	private String req_vac_name; //휴가유형이름
	private Date vac_s_date; //휴가시작일자
	private Date vac_f_date; //휴가종료일자
	private int vac_date_cnt; //휴가사용일수
	private String man_position_id; //승인권자직급코드
	private String man_name; //승인권자이름
	private String app_ok; //승인여부
	private Date app_ok_date; //승일된일자

	
	//vacation_type
	private int	vac_type_idx; //휴가타입코드
	private String vac_name; //휴가이름
	private int	type_vac_group_idx; //휴가그룹코드
	private String salary_ok; //급여인증여부
	private int	vac_minus; //휴가차감갯수


	
}
