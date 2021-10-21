package kr.co.onoff.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.onoff.beans.UserBean;

@Controller
public class HomeController {

	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String landing() {
		
		//context클래스에 configureViewResolvers에 jsp는 다 읽으라고 등록해둬서 확장자명(.jsp)는 생략해야함
		return "landing/landing";
	}
	
	
	
}
