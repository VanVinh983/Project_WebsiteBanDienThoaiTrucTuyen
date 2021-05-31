package com.dienthoai.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dienthoai.entity.NguoiDung;
import com.dienthoai.service.NguoiDungService;

@RestController(value = "NguoiDungRestControllerOfAdmin")
@RequestMapping("/admin/user/api")
public class NguoiDungRestController {
	@Autowired
	private NguoiDungService nguoiDungService;
	
	@GetMapping("/users/{id}")
	public NguoiDung getNguoiDungs(@PathVariable int id){
		return nguoiDungService.getNguoiDung(id);
	}
}
