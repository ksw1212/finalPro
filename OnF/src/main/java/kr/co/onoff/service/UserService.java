package kr.co.onoff.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.onoff.beans.EmployeeBean;
import kr.co.onoff.beans.UserBean;
import kr.co.onoff.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void updateUserInfo(UserBean joinUserBean) {
		userDao.updateUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean temploginUserBean) {
		UserBean temploginUserBean2 = userDao.getLoginUserInfo(temploginUserBean);
		
		//로그인시 가져온 데이터가 있다면 
		if(temploginUserBean2 != null) { 
			loginUserBean.setUser_idx(temploginUserBean2.getUser_idx());
			loginUserBean.setUser_name(temploginUserBean2.getUser_name());
			loginUserBean.setUser_auth_id(temploginUserBean2.getUser_auth_id());
			loginUserBean.setUser_auth_ok(temploginUserBean2.getUser_auth_ok());
			
			loginUserBean.setUserLogin(true);//로그인 완료 
		}
	}
	
	
	public UserBean personalUserInfo(int user_idx) {
		
		return userDao.personalUserInfo(loginUserBean.getUser_idx());
		
	}
	public UserBean selectUserInfo(int user_idx) {
		return userDao.selectUserInfo(loginUserBean.getUser_idx());
	}
	public void getModifyUserBean(UserBean modifyUserBean) {
		UserBean tempModifyUserBean=userDao.personalUserInfo(loginUserBean.getUser_idx());
	
		modifyUserBean.setUser_email(tempModifyUserBean.getUser_email());
		modifyUserBean.setUser_addr1(tempModifyUserBean.getUser_addr1());
		modifyUserBean.setUser_addr2(tempModifyUserBean.getUser_addr2());
		modifyUserBean.setUser_tel(tempModifyUserBean.getUser_tel());
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		
	}
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		userDao.modifyUserInfo(modifyUserBean);
	}
	public void modifyPasswordInfo(UserBean modifyPasswordBean) {
		modifyPasswordBean.setUser_idx(loginUserBean.getUser_idx());
		userDao.modifyPasswordInfo(modifyPasswordBean);
	}
	public void getmodifyPasswordInfo(UserBean getmodifyPasswordInfo) {
		UserBean tempModifyPasswordBean=userDao.getmodifyPasswordInfo(loginUserBean.getUser_idx());
		getmodifyPasswordInfo.setUser_idx(tempModifyPasswordBean.getUser_idx());
		getmodifyPasswordInfo.setUser_password(tempModifyPasswordBean.getUser_password());
		getmodifyPasswordInfo.setUser_idx(loginUserBean.getUser_idx());
		
	}
	public void deleteMemberInfo(String user_email,String user_password) {
		userDao.deleteMemberInfo(user_email, user_password);
	}
	
}
