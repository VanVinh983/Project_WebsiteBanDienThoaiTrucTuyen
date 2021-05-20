package com.dienthoai.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "dangNhapController")
@RequestMapping(value = "/user")
public class DangNhapController {
	@GetMapping(value = "/formDangNhap")
	public String showFormDangNhap() {
		return "user/dangnhap";
	}
}
