package com.dienthoai.controller.user;

import java.security.Principal;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dienthoai.entity.DienThoaiGioHang;
import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.NguoiDung;
import com.dienthoai.entity.PhuongThucThanhToan;
import com.dienthoai.service.HoaDonService;
import com.dienthoai.service.NguoiDungService;

@Controller(value = "thanhToanController")
@RequestMapping(value = "/user")
public class ThanhToanController {
	@Autowired
	HoaDonService hoaDonService;

	@Autowired
	NguoiDungService nguoiDungService;

	@GetMapping(value = "/showFormNguoiNhan")
	public String showFormNguoiNhan(Model model, HttpSession session) {
		List<DienThoaiGioHang> cart = (List<DienThoaiGioHang>) session.getAttribute("cart");
		if (cart == null) {
			session.setAttribute("errorcartnull", "Vui lòng chọn sản phẩm vào giỏ hàng");
			return "redirect:/user/gioHang";

		} else {
			if (cart.size() <= 0) {
				session.setAttribute("errorcartnull", "Vui lòng chọn sản phẩm vào giỏ hàng");
				return "redirect:/user/gioHang";
			} else {
				List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan = hoaDonService.layTatCaPhuongThucThanhToan();
				model.addAttribute("nguoiNhan", new HoaDon());
				model.addAttribute("layTatCaPhuongThucThanhToan", layTatCaPhuongThucThanhToan);
				return "user/thanhtoan";
			}
		}
	}

	@RequestMapping(value = "/thanhtoan", method = RequestMethod.POST)
	public String thanhToan(@Valid @ModelAttribute("nguoiNhan")HoaDon nguoiNhan,BindingResult result,@RequestParam("idPT") int idPT, Model model, Principal principal) {
		if (result.hasErrors()) {
			List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan = hoaDonService.layTatCaPhuongThucThanhToan();
			model.addAttribute("layTatCaPhuongThucThanhToan", layTatCaPhuongThucThanhToan);
			return "user/thanhtoan";
		}
		else {
			String tenDangNhap = principal.getName();
			NguoiDung nguoiDung = nguoiDungService.getTenDangNhap(tenDangNhap);
			nguoiNhan.setNguoiDung(nguoiDung);
			
			PhuongThucThanhToan pttt=hoaDonService.getPhuongThuc(idPT);
			nguoiNhan.setThanhToan(pttt);
			
			long millis = System.currentTimeMillis();
			Date date = new Date(millis);
			nguoiNhan.setNgayLap(date);
			
			//nguoiNhan.addDanhSachChiTiet(dt.getDienThoai(), dt.getSoLuong());
			
			hoaDonService.saveHoaDon(nguoiNhan);

			return "user/xacnhan";
		}
	}
}
