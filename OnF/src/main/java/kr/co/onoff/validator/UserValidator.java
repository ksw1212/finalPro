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
		// TODO Auto-generated method stub
		UserBean userBean=(UserBean)target;
		
		/*
		 * //유효성 검사를 하는 Bean의 이름을 확보 String beanName=errors.getObjectName();
		 * System.out.println(beanName); //어떤걸로 유효성 검사를 하는지 출력해준다.
		 * 
		 * if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")){
		 * if(userBean.getUser_pw().equals(userBean.getUser_pw2())==false) {
		 * 
		 * errors.rejectValue("user_pw", "NotEquals"); errors.rejectValue("user_pw2",
		 * "NotEquals");
		 * 
		 * // 필드에 대한 에러코드를 추가 user_pw에 NotEquals라는 에러코드를 추가한다 }
		 * 
		 * if(beanName.equals("joinUserBean")){ if(userBean.isUserIdExist()==false) {
		 * errors.rejectValue("user_id", "DontCheckUserIdExist"); }//if
		 * 
		 * }//if }//if
		 */	
		}//method

}//class
