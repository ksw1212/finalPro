package kr.co.onoff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/department")
public class DepartmentController {

	@GetMapping("/mydept")
	public String mydept() {
		return "department/mydept";
	}
	@GetMapping("/dept")
	public String dept() {
		return "department/dept";
	}
}
