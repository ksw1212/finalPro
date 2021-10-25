package kr.co.onoff.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.onoff.beans.UserBean;
import kr.co.onoff.service.UserService;
import kr.co.onoff.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/mypage")
	public String mypage(@RequestParam(defaultValue = "1")int user_idx,
						 Model model) {
		model.addAttribute("user_idx",user_idx);
		UserBean mypageUserBean = userService.personalUserInfo(user_idx);
		model.addAttribute("mypageUserBean",mypageUserBean);
		model.addAttribute("loginUserBean",loginUserBean);
		return "user/mypage";
	}

	@GetMapping("/profile")
	public String profile(@RequestParam(defaultValue = "1")int user_idx,
						  Model model) {
		model.addAttribute("user_idx",user_idx);
		UserBean myprofileUserBean = userService.selectUserInfo(user_idx);
		model.addAttribute("myprofileUserBean",myprofileUserBean);
		model.addAttribute("loginUserBean",loginUserBean);
		
		return "user/profile";
	}

//////////////////////user&master login//////////////////////////
	@GetMapping("/login")
	public String login(@ModelAttribute("temploginUserBean") UserBean temploginUserBean,
						@RequestParam(value ="fail",defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail",fail);
		return "user/login";
	}
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute ("temploginUserBean") UserBean temploginUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/login";
		}
		userService.getLoginUserInfo(temploginUserBean);
		if(loginUserBean.isUserLogin()==true) { 
			System.out.println(loginUserBean.getUser_name());
			return "user/login_success"; 
		}else {
			return "user/login_fail";
		}
	}

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}

////////////////////// master join//////////////////////////
	@GetMapping("/join_master1")
	public String join_maste1(@ModelAttribute ("joinUserBean") UserBean joinUserBean, Model model) {
		
		return "user/join_master1";
	
	}
	////////////////////idx, email, password 입력///////////////
	@PostMapping("/join_master1_pro")
	public String join_master1_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result, Model model) {
		if(result.hasErrors()) {
		return "user/join_master1";
		} else {
		return "user/join_master2";
		}
	}
	
	@RequestMapping(value="/join_master2", method={RequestMethod.GET, RequestMethod.POST})
	public String join_maste2(@ModelAttribute ("joinUserBean") UserBean joinUserBean) {
	return "user/join_master2";
	}
	
	@GetMapping("/join_master2_pro")
	public String join_master2_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result, Model model) {
	
		if(result.hasErrors()) {
		return "user/join_master2";
		} else {
			userService.addUserInfo(joinUserBean);
		return "user/join_success";
		}
	}

////////////////////////////////////////////////////////////

	
	@GetMapping("/login_findpassword")
	public String login_findpassword() {
		return "user/login_findpassword";
	}

	@PostMapping("/login_findpassword_pro")
	public String login_findpassword_pro() {
		return "user/login_password_success";
	}

	@GetMapping("/mypage_password")
	public String mypage_password(@ModelAttribute("getmidifyPasswordBean") UserBean getmidifyPasswordBean) {
		userService.getmodifyPasswordInfo(getmidifyPasswordBean);
		return "user/mypage_password";
	}
	@PostMapping("/mypage_password_pro")
	public String mypage_password_pro(@ModelAttribute("midifyPasswordBean") UserBean midifyPasswordBean,BindingResult result) {
		if(result.hasErrors()) {
			return "user/mypage_password";
		}
		
		userService.modifyPasswordInfo(midifyPasswordBean);
		return "user/mypage_password_success";
	}
	
	@GetMapping("/mypage_modify")
	public String mypage_modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {
		userService.modifyUserInfo(modifyUserBean);
		return "user/mypage_modify";
	}

	@RequestMapping(value = "/mypage_withdraw", method = {RequestMethod.GET,RequestMethod.POST })
	public String mypage_withdraw(@ModelAttribute("deleteUserBean") UserBean deleteUserBean) {
		
		
		return "user/mypage_withdraw";
	}
	@RequestMapping(value = "/mypage_withdraw_pro", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypage_withdraw_pro(@Valid @ModelAttribute("deleteUserBean")UserBean deleteUserBean,BindingResult result) {
		if(result.hasErrors()) {
			return "user/mypage_withdraw";
		}
		
		userService.deleteMemberInfo(loginUserBean.getUser_email(), loginUserBean.getUser_password());
		return "user/landing/landing";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "user/logout";
	}
	@GetMapping("/vac_req")
	public String vac_req() {
		return "user/vac_req";
	}
}
