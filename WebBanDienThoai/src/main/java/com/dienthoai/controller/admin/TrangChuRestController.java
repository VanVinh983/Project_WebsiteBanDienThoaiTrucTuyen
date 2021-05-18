package com.dienthoai.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.service.DienThoaiService;

@RestController(value = "trangChuRestControllerOfAdmin")
@RequestMapping("/admin/api")
public class TrangChuRestController {
	@Autowired
	private DienThoaiService dienThoaiService;

	@GetMapping("/products")
	public List<DienThoai> getDienThoaiBanChay() {
		return dienThoaiService.getDienTHoaiBanChay();
	}
}
