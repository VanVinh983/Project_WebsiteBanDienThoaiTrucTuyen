package com.dienthoai.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.service.DienThoaiService;

@Controller(value = "chiTietDienThoaiControllerOfUser")
@RequestMapping("/user")
public class ChiTietDienThoaiController {
	@Autowired
	private DienThoaiService dienThoaiService;
	@RequestMapping(value = "/chitietdt", method = RequestMethod.GET)
	public String listCustomers(Model theModel, @ModelAttribute("dt") DienThoai dienThoai) {
		return "user/chiTietDienThoai";
	}

}
