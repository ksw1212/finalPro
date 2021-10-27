package kr.co.onoff.mapper;

import org.apache.ibatis.annotations.Delete;
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
			+ "from onf_user where user_idx=#{user_idx}")
	UserBean personalUserInfo(int user_idx);

	@Select("select b.emp_id, b.extension_tel, b.join_date, b.position_name, b.dep_name, b.status "
			+ "from onf_user a, employee b, department c where a.user_idx=b.emp_user_idx and b.dep_idx=c.dep_idx and user_idx=#{user_idx}")
	UserBean selectUserInfo(int user_idx);
	
	@Update("update onf_user set  user_email=#{user_email, jdbcType=VARCHAR},user_addr1=#{user_addr1},user_addr2=#{user_addr2},user_tel=#{user_tel} "
			+ "where user_idx=#{user_idx}")
	void modifyUserInfo(UserBean modifyUserBean);

	@Update("update onf_user set user_password=#{user_newpassword} where user_idx=#{user_idx}")
	void modifyPasswordInfo(UserBean modifyPasswordBean);
	
	@Select("select user_password from onf_user where user_idx=#{user_idx}")
	UserBean getmodifyPasswordInfo(int user_idx);
	
	@Update("update onf_user set user_name=#{user_name}, user_tel=#{user_tel}, user_addr1=#{user_addr1}, user_addr2=#{user_addr2}, auth_key='12345678', auth_ok='N' "
			+ "where user_idx=#{user_idx}")
	void updateUserInfo(UserBean joinUserBean);
	@Insert("insert into onf_user(user_idx, user_auth_id, user_email, user_password, user_name, user_tel, user_addr1, user_addr2, user_auth_key, user_auth_ok) "
			+ "values(user_seq.nextval, 'ma', #{user_email, jdbcType=VARCHAR}, #{user_password, jdbcType=VARCHAR}, #{user_name}, #{user_tel}, #{user_addr1}, #{user_addr2}, #{user_auth_key, jdbcType=VARCHAR}, #{user_auth_ok, jdbcType=VARCHAR})")
	void addUserInfo(UserBean joinUserBean);
	@Delete("delete from onf_user where user_email=#{user_email} and user_password = #{user_password}")
	void deleteMemberInfo(String user_email,String user_password);
}
