package kr.co.onoff.beans;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyBean {

	
	private int	comp_idx;	//회사코드
	private String	comp_name;	//	회사이름
	private Date	comp_bulid_date;	//	회사설립일
	private String	comp_addr1;	//	회사주소
	private String 	comp_addr2;	//	회사상세주소


}
