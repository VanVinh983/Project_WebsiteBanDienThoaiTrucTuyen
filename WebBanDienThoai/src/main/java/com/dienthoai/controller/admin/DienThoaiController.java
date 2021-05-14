package com.dienthoai.controller.admin;

import java.util.List;

import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dienthoai.entity.DanhMuc;
import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.NguoiDung;
import com.dienthoai.entity.ThongSo;
import com.dienthoai.service.DanhMucService;
import com.dienthoai.service.DienThoaiService;
import com.dienthoai.service.ThongSoService;

@Controller(value = "dienThoaiControllerOfAdmin")
@RequestMapping("/admin")
public class DienThoaiController { 
	@Autowired
	private DienThoaiService dienThoaiService;
	
	@Autowired
	private DanhMucService danhMucService;
	
	@Autowired
	private ThongSoService thongSoService;

	@GetMapping("/product/list")
	public String listProduct(Model theModel) {
		List<DienThoai> productList = dienThoaiService.getListDienThoai();
		theModel.addAttribute("productList", productList);
		return "admin/product";
	}
	
	@GetMapping("/product/delete")
	public String deleteProduct(@RequestParam("productId") int id) {
		dienThoaiService.deleteDienThoai(id);
		return "redirect:/admin/product/list";
	}
	
	@GetMapping("/product/showFormEdit")
	private String showFormEditProduct(@RequestParam("productId") int id, Model theModel) {
		DienThoai product=dienThoaiService.getDienThoai(id);
		List<DanhMuc> cates=danhMucService.getListDanhMuc();
		int cate_id=product.getDanhMuc().getId();
		theModel.addAttribute("product",product);
		theModel.addAttribute("cates",cates);
		theModel.addAttribute("id",cate_id);
		return "admin/product-form";
	}
	
	@GetMapping("/product/showFormAdd")
	private String showFormAddProduct(Model theModel) {
		DienThoai product=new DienThoai();
		List<DanhMuc> cates=danhMucService.getListDanhMuc();
		theModel.addAttribute("cates",cates);
		theModel.addAttribute("product",product);
		return "admin/product-form";
	}
	
	@PostMapping("/product/save")
	private String editAdmin(@ModelAttribute("product") DienThoai product, @RequestParam ("cateId") int id, @RequestParam("detail_id") String detail_id) {
		DanhMuc cate=danhMucService.getDanhMuc(id);
		product.setDanhMuc(cate);
		ThongSo ts=thongSoService.getThongSo(Integer.parseInt(detail_id));
		product.setThongSo(ts);
		dienThoaiService.saveDienThoai(product);
		
		return "redirect:/admin/product/list";
	}
	
}
