package com.dienthoai.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.ThuongHieu;
import com.dienthoai.service.DienThoaiService;

@Controller(value = "dienThoaiControllerOfUser")
@RequestMapping("/dienthoai")
public class DienThoaiController { 
	@Autowired
	private DienThoaiService dienThoaiService;

	@GetMapping("/danhsach")
	public String listCustomers(Model theModel) {
		List<DienThoai> listGiamGia = dienThoaiService.getDienThoaiGiamGia();
		List<DienThoai> listBanChay = dienThoaiService.getDienTHoaiBanChay();
		List<DienThoai> listDienThoai = dienThoaiService.getListDienThoai();
		List<DienThoai> dtsGiamGia = new ArrayList<DienThoai>();
		List<DienThoai> dtsBanChay = new ArrayList<DienThoai>();
		List<ThuongHieu> listThuongHieu = dienThoaiService.getListThuongHieu();
		for (int i = 0; i < 4; i++) {
			dtsGiamGia.add(listGiamGia.get(i));
			dtsBanChay.add(listBanChay.get(i));
		}
		theModel.addAttribute("countGiamGia", listGiamGia.size());
		theModel.addAttribute("countBanChay", listBanChay.size());
		theModel.addAttribute("dts", dtsGiamGia);
		theModel.addAttribute("dtsbc",dtsBanChay);
		theModel.addAttribute("dienthoais", listDienThoai);
		theModel.addAttribute("ths", listThuongHieu);
		return "user/danhsach-dienthoai2";
	}
	
	@GetMapping("/danhmuc")
	public String danhmuc(Model theModel) {
		theModel.addAttribute("ths", dienThoaiService.getListThuongHieu());
		theModel.addAttribute("dts", dienThoaiService.getListDienThoai());
		theModel.addAttribute("dtbc",  dienThoaiService.getDienTHoaiBanChay());
		return "user/danhmuc";
	}
	@GetMapping("/chitietdienthoai")
	public String chitietdienthoai(Model model, HttpSession session) {
		DienThoai dt = (DienThoai) session.getAttribute("dienthoai");
		model.addAttribute("dt", dt);
		return "user/chitietdienthoai";
	}
	@RequestMapping(value = "/laychitiet/{id}", method = RequestMethod.GET)
	public String laychitiethoadon(Model model,@PathVariable(value = "id")int id,HttpSession session) {
		DienThoai dt = dienThoaiService.getDienThoai(id);
		session.setAttribute("dienthoai", dt);
		return "redirect:/dienthoai/chitietdienthoai";
	}
	
}
