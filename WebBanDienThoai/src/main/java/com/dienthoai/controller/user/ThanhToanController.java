package com.dienthoai.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dienthoai.entity.DienThoaiGioHang;
import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.PhuongThucThanhToan;
import com.dienthoai.service.HoaDonService;

@Controller(value = "thanhToanController")
@RequestMapping(value = "/user")
public class ThanhToanController {
	@Autowired
	HoaDonService hoaDonService;

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
}
