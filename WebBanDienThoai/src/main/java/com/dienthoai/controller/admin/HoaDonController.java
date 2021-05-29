package com.dienthoai.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dienthoai.entity.HoaDon;
import com.dienthoai.service.HoaDonService;

@Controller(value = "HoaDonControllerOfAdmin")
@RequestMapping("/admin")
public class HoaDonController {
	@Autowired
	private HoaDonService hoaDonService;

	@GetMapping("/order/list")
	private String order(Model theModel,@RequestParam(value = "page",  defaultValue = "1") int page) {
		List<HoaDon> orders=hoaDonService.getListHoaDon();
		theModel.addAttribute("order",hoaDonService.getListHoaDonTheoPage(page, orders));
		theModel.addAttribute("page", page);
		theModel.addAttribute("total",orders.size());
		return "admin/order";
	}
	@GetMapping("/order/search")
	private String order(Model theModel,@RequestParam(value = "page",  defaultValue = "1") int page,@RequestParam(value="search", defaultValue = "") String search) {
		List<HoaDon> orders=hoaDonService.timKiemHoaDon(search);
		theModel.addAttribute("order",hoaDonService.getListHoaDonTheoPage(page, orders));
		theModel.addAttribute("page", page);
		theModel.addAttribute("total",orders.size());
		return "admin/order";
	}
	

}
