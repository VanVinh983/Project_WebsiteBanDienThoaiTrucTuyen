package com.dienthoai.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.NguoiDung;
import com.dienthoai.service.NguoiDungService;

@Controller(value = "dangKyController")
@RequestMapping(value = "/user")
public class DangKyController {
	@Autowired
	private NguoiDungService nguoiDungService;
	
	@GetMapping(value = "/formDangKy")
	public String showFormDangKy(Model model) {
		model.addAttribute("nguoiDungDangNhap",	new NguoiDung());
		return "user/dangky";
	}
	
	@PostMapping("/dangky")
	public String DangKy(@ModelAttribute("nguoiDung") NguoiDung nguoiDung,Model theModel) {
		String tenDangNhap=nguoiDung.getTenDangNhap();
		
		NguoiDung tonTai=nguoiDungService.getTenDangNhap(tenDangNhap);
		if(tonTai!=null) {
			theModel.addAttribute("nguoiDung",new NguoiDung());
			theModel.addAttribute("loi","Tên đăng nhập đã tồn tại!");
			return "user/dangky";
		}
		else {
			nguoiDungService.saveNguoiDung(nguoiDung);
			return "user/dangkythanhcong";
		}
	}
}
