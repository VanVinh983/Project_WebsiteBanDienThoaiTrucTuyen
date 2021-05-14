package com.dienthoai.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "trangChuControllerOfadmin")
@RequestMapping("/admin")
public class TrangchuController {
	
	@GetMapping("/trang-chu")
	private String trangChu(Model model) {
		return "admin/index";
	}
}
