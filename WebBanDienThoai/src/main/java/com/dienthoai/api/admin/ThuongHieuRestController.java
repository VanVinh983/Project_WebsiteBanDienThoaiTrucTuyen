package com.dienthoai.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dienthoai.service.ThuongHieuService;

@RestController(value = "thRestControllerOfAdmin")
@RequestMapping("/admin/brand/api")
public class ThuongHieuRestController {
	@Autowired
	private ThuongHieuService thuongHieuService;

	@DeleteMapping("/brands/{id}")
	public void xoaThuongHieu(@PathVariable int id) {
		thuongHieuService.deleteThuongHieu(id);
	}
	
}
