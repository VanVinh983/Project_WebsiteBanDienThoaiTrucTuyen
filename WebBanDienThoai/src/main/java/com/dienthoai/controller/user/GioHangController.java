package com.dienthoai.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.service.DienThoaiService;

@Controller(value = "GioHangControllerOfUser")
@RequestMapping("/user")
public class GioHangController {
	@Autowired
	private DienThoaiService dienThoaiService;
	
	@GetMapping(value = "/giohang")
	public String showGioHang(Model model) {
		List<DienThoai> allDienThoais= dienThoaiService.getListDienThoai();
		List<DienThoai> get5DienThoais = new ArrayList<DienThoai>();
		for (int i = 0; i < 5; i++) {
			get5DienThoais.add(allDienThoais.get(i));
		}
		model.addAttribute("dsctgh", get5DienThoais);
		return "user/giohang";
	}
}
