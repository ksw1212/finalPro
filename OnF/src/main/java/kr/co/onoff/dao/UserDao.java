package kr.co.onoff.dao;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.onoff.beans.UserBean;
import kr.co.onoff.mapper.UserMapper;

@Repository
public class UserDao {

	@Autowired
	private UserMapper userMapper;
	
	public UserBean personalUserInfo(int user_idx) {
		return userMapper.personalUserInfo(user_idx);
	}
	public UserBean selectUserInfo(int user_idx) {
		return userMapper.selectUserInfo(user_idx);
	}
	public UserBean getLoginUserInfo(UserBean temploginUserBean) {
	    return userMapper.getLoginUserInfo(temploginUserBean);
	}
	public void modifyUserInfo(UserBean modifyUserBean) {
		userMapper.modifyUserInfo(modifyUserBean);
	}
	public void modifyPasswordInfo(UserBean modifyPasswordBean) {
		userMapper.modifyPasswordInfo(modifyPasswordBean);
	}
	public UserBean getmodifyPasswordInfo(int user_idx) {
		return userMapper.getmodifyPasswordInfo(user_idx);
	}
	public void updateUserInfo(UserBean joinUserBean) {
		userMapper.updateUserInfo(joinUserBean);
	}
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	public void deleteMemberInfo(String user_email,String user_password) {
		userMapper.deleteMemberInfo(user_email, user_password);
	}
}
