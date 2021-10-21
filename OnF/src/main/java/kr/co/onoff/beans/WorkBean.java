package kr.co.onoff.beans;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WorkBean {

	//work_management
	private String work_idx; //근태코드
	private String man_emp_id; //사번
	private String work_day; //근무일
	private Date actual_work_t; //실제근무시작시간
	private Date actual_offwork_t; //실제근무종료시간
	private String late_ok; //지각여부



	//work_type
	private int work_type_idx;//근무유형코드
	private String dep_id;//부서코드
	private Date work_s_time;//근무시작시간
	private Date work_f_time;//근무종료시간
	private Date break_time; //휴게시간


	//work_plan
	private int plan_idx; //근무일정코드
	private String plan_emp_id; //사번
	private int plan_work_type_id; //근무유형코드
	private String work_date; //근무일
	private String work_name; //근무일정이름

}
