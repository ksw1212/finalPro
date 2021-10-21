package kr.co.onoff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("master")
public class MasterController {

	@GetMapping("/master-emp")
	public String emp() {
		return "master/master-emp";
	}
	
	@GetMapping("/master-work")
	public String work() {
		return "master/master-work";
	}
	@GetMapping("/master-worktype")
	public String worktype() {
		return "master/master-worktype";
	}
	@GetMapping("/companySettings")
	public String companySettings() {
		return "master/companySettings";
	}
	@GetMapping("/companyDelete")
	public String companyDelete() {
		return "master/companyDelete";
	}
	@GetMapping("/vac_generate")
	public String vac_generate() {
		return "master/vac_generate";
	}
	@GetMapping("/vaq_approve")
	public String vaq_approve() {
		return "master/vaq_approve";
	}
	
}
