package com.dienthoai.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.dienthoai.entity.DanhMuc;
import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.ThongSo;
import com.dienthoai.service.DanhMucService;
import com.dienthoai.service.DienThoaiService;
import com.dienthoai.service.ThongSoService;

@Controller(value = "dienThoaiControllerOfAdmin")
@RequestMapping("/admin")
public class DienThoaiController { 
	private static final String UPLOA_DIRECTORY ="resources/user/images/SanPham";
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
	public String deleteProduct(@RequestParam("productId") int id, @RequestParam("productDetailId") int detailId) {
		thongSoService.deleteThongSo(detailId);
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
	private String editAdmin(@ModelAttribute("product") DienThoai product, @RequestParam ("cateId") int id, 
			@RequestParam("detail_id") String detail_id,@RequestParam() CommonsMultipartFile linkImage, HttpServletRequest request) throws Exception {
		ServletContext context= request.getServletContext();		
		String path= context.getRealPath(UPLOA_DIRECTORY);
		String imageUrl=linkImage.getOriginalFilename();
		//String path="D:\\IUH\\WWW.JAVA\\A-project\\New folder\\Project_WebsiteBanDienThoaiTrucTuyen\\WebBanDienThoai\\src\\main\\webapp\\resources\\admin\\images\\product";
		byte[] bytes=linkImage.getBytes();
		try {
			BufferedOutputStream stream=new BufferedOutputStream(new FileOutputStream(new File(path+File.separator + imageUrl)));
			stream.write(bytes);
			stream.flush();
			stream.close();
			product.setAnhURL(imageUrl);
			DanhMuc cate=danhMucService.getDanhMuc(id);
			product.setDanhMuc(cate);
			ThongSo ts=thongSoService.getThongSo(Integer.parseInt(detail_id));
			product.setThongSo(ts);		
			
		} catch (Exception e) {
			// TODO: handle exception			
		}
	
		dienThoaiService.saveDienThoai(product);
		return "redirect:/admin/product/list";
	}
	
}
