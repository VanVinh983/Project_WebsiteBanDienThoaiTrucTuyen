package com.dienthoai.controller.user;

import java.sql.Date;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.NguoiDung;
import com.dienthoai.service.NguoiDungService;
import com.dienthoai.service.RoleService;

@Controller(value = "dangKyController")
@RequestMapping(value = "/user")
public class DangKyController {
	@Autowired
	private NguoiDungService nguoiDungService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private RoleService roleService;

	@GetMapping(value = "/formDangKy")
	public String showFormDangKy(Model model) {
		model.addAttribute("nguoiDung", new NguoiDung());
		return "user/dangky";
	}

	@PostMapping("/dangky")
	public String DangKy(@ModelAttribute("nguoiDung") @Validated NguoiDung nguoiDung,BindingResult result, Model theModel
			) {
		if (result.hasErrors()) {
			return "user/dangky";
		} else {
			String role="ROLE_USER";
			String tenDangNhap = nguoiDung.getTenDangNhap();
			NguoiDung tonTai = nguoiDungService.getTenDangNhap(tenDangNhap);
			if (tonTai != null) {
				theModel.addAttribute("nguoiDung", new NguoiDung());
				theModel.addAttribute("loi", "Tên đăng nhập đã tồn tại!");
				return "user/dangky";
			} else {
				nguoiDung.setNgayTao(new Date(System.currentTimeMillis()));
				nguoiDung.setVaiTro(role);
				nguoiDung.setMatKhau(passwordEncoder.encode(nguoiDung.getMatKhau()));
				nguoiDung.setRoles(Arrays.asList(roleService.findRoleByName(role)));
				nguoiDungService.saveNguoiDung(nguoiDung);
				return "user/dangkythanhcong";
			}
		}
	}
}
