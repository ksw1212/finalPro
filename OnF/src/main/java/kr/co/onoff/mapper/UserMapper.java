package kr.co.onoff.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.onoff.beans.UserBean;

public interface UserMapper {

///////////////로그인시 회원번호, 회원이름, 회원권한 가져오는 sql////////////////////////////
	@Select("select user_idx, user_name, user_auth_id, user_auth_ok "
			+ "from onf_user "
			+ "where user_email=#{user_email} and user_password=#{user_password}")
	UserBean getLoginUserInfo(UserBean temploginUserBean);
	

	@Select("select user_name, user_email,user_tel,user_addr1,user_addr2 "
			+ "from onf_user where user_email=#{user_email}")
	UserBean personalUserInfo(String user_email);

	@Select("select emp_id,extension_tel,join_date,basic_vac_total,special_vac_total,position_name,status,dep_name"
			+ " from employee, onf_user where emp_user_idx=user_idx and user_email=#{user_email}")
	UserBean HRUserInfo(String user_email);
	
	@Update("update onf_user set user_email=#{user_email},user_addr1=#{user_addr1},user_addr2=#{user_addr2},user_tel=#{user_tel} "
			+ "where user_idx=#{user_idx}")
	void modifyUserInfo(UserBean modifyUserBean);

	@Update("update onf_user set user_password=#{user_password} where user_idx=#{user_idx}")
	void modifyPasswordInfo(UserBean modifyPasswordBean);
	
	@Select("select user_password from onf_user where user_idx=#{user_idx}")
	UserBean getmodifyPasswordInfo(int user_idx);
	
	@Update("update onf_user set user_name=#{user_name}, user_tel=#{user_tel}, user_addr1=#{user_addr1}, user_addr2=#{user_addr2}, auth_key='12345678', auth_ok='N' "
			+ "where user_idx=#{user_idx}")
	void updateUserInfo(UserBean joinUserBean);
	@Insert("insert into onf_user(user_idx, user_auth_id, user_email, user_password, user_name, user_tel, user_addr1, user_addr2, user_auth_key, user_auth_ok) "
			+ "values(user_seq.nextval, 'ma', #{user_email, jdbcType=VARCHAR}, #{user_password, jdbcType=VARCHAR}, #{user_name}, #{user_tel}, #{user_addr1}, #{user_addr2}, #{user_auth_key, jdbcType=VARCHAR}, #{user_auth_ok, jdbcType=VARCHAR})")
	void addUserInfo(UserBean joinUserBean);
}
