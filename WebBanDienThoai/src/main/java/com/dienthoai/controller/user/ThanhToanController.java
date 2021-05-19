package com.dienthoai.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.PhuongThucThanhToan;
import com.dienthoai.service.HoaDonService;
@Controller(value = "thanhToanController")
@RequestMapping(value = "/user")
public class ThanhToanController {
	@Autowired
	HoaDonService hoaDonService;
	
	@GetMapping(value = "/showformnguoinhan")
	public String showFormNguoiNhan(Model model) {
		List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan = hoaDonService.layTatCaPhuongThucThanhToan();
		model.addAttribute("nguoiNhan", new HoaDon());
		model.addAttribute("layTatCaPhuongThucThanhToan", layTatCaPhuongThucThanhToan);
		return "user/thanhtoan";
	}
}
