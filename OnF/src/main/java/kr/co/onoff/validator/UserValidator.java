package kr.co.onoff.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.onoff.beans.UserBean;


public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//형변환(Object target -> UserBean userBean)
		UserBean userBean=(UserBean)target;
		
		//유효성검사를 하는 bean의 이름을 확보
		String beanName =errors.getObjectName();
		System.out.println(beanName);
		
		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean") ) {
			if(userBean.getUser_password().equals(userBean.getUser_password2())==false) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			}
			
		if(beanName.equals("joinUserBean")){
			if(userBean.isUserIdExist()==false) {
				errors.rejectValue("user_id", "DontCheckUserIdExist");
				}//if
			}//if
		}//if
	}//method	
}//class