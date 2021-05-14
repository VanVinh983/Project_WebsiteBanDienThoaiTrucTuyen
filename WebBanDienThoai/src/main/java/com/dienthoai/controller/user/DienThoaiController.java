package com.dienthoai.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.service.DienThoaiService;

@Controller(value = "dienThoaiControllerOfUser")
@RequestMapping("/dienthoai")
public class DienThoaiController { 
	@Autowired
	private DienThoaiService dienThoaiService;

	@GetMapping("/danhsach")
	public String listCustomers(Model theModel) {
		List<DienThoai> dts = dienThoaiService.getListDienThoai();
		theModel.addAttribute("dts", dts);
		return "user/danhsach-dienthoai";
	}
}
