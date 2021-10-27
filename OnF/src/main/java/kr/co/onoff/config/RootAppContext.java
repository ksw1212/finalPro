package kr.co.onoff.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
//프로젝트 작업시 데이터베이스 VO(databasebean)를 정의하는 클래스
import org.springframework.web.context.annotation.SessionScope;

import kr.co.onoff.beans.UserBean;

@Configuration
public class RootAppContext {

	@Bean("loginUserBean")
	@SessionScope
	public UserBean loginUserBean() {
		
		return new UserBean();
	}
}
