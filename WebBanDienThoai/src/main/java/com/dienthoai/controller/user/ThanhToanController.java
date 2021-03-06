package com.dienthoai.controller.user;

import java.security.Principal;
import java.sql.Date;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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

import com.dienthoai.entity.ChiTietHoaDon;
import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.DienThoaiGioHang;
import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.NguoiDung;
import com.dienthoai.entity.PhuongThucThanhToan;
import com.dienthoai.service.ChiTietHoaDonService;
import com.dienthoai.service.DienThoaiService;
import com.dienthoai.service.HoaDonService;
import com.dienthoai.service.NguoiDungService;

@Controller(value = "thanhToanController")
@RequestMapping(value = "/user")
public class ThanhToanController {
	@Autowired
	HoaDonService hoaDonService;

	@Autowired
	NguoiDungService nguoiDungService;

	@Autowired
	ChiTietHoaDonService chiTietHoaDonService;

	@Autowired
	DienThoaiService dienThoaiService;

	@GetMapping(value = "/showFormNguoiNhan")
	public String showFormNguoiNhan(Model model, HttpSession session) {
		List<DienThoaiGioHang> cart = (List<DienThoaiGioHang>) session.getAttribute("cart");
		if (cart == null) {
			session.setAttribute("errorcartnull", "Vui l??ng ch???n s???n ph???m v??o gi??? h??ng");
			return "redirect:/user/gioHang";

		} else {
			if (cart.size() <= 0) {
				session.setAttribute("errorcartnull", "Vui l??ng ch???n s???n ph???m v??o gi??? h??ng");
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
	public String thanhToan(@Valid @ModelAttribute("nguoiNhan")HoaDon nguoiNhan,BindingResult result,@RequestParam("idPT") int idPT, Model model, Principal principal,
			HttpSession session) {
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
						
			hoaDonService.saveHoaDon(nguoiNhan);
			
			DecimalFormat format = new DecimalFormat("###,###.## vn??");
			List<DienThoaiGioHang> cart = (List<DienThoaiGioHang>) session.getAttribute("cart");
			String noiDung="";
			for (DienThoaiGioHang dt : cart) {	
				noiDung+="??i???n tho???i: "+dt.getDienThoai().getTenDT()+" "+dt.getDienThoai().getThongSo().getBoNho()+" "+dt.getDienThoai().getThongSo().getRam()
						+ ", m??u: "+dt.getDienThoai().getMauSac()+" . "+"????n gi??: "+format.format(dt.getDienThoai().getGiaDT())+" "+" S??? l?????ng: "+dt.getSoLuong()+" \n";
				chiTietHoaDonService.addChiTietHoaDon(dt.getDienThoai().getId(), nguoiNhan.getId(), dt.getSoLuong());
				DienThoai capNhatSoLuong=dt.getDienThoai();
				int soLuong=0;
				soLuong= dt.getDienThoai().getSoLuongTon()-dt.getSoLuong();
				capNhatSoLuong.setSoLuongTon(soLuong);
				dienThoaiService.saveDienThoai(capNhatSoLuong);
			}
			String thongTinNguoiNhan = 
					"- H??? v?? t??n: "+nguoiNhan.getHoTenKhachHang()+"\n"+
					"- S??? ??i???n tho???i: "+nguoiNhan.getSoDienThoaiGiaoHang()+"\n"+
					"- Email: "+nguoiNhan.getEmail()+"\n"+
					"- ?????a ch??? nh???n: "+nguoiNhan.getDiaChiGiaoHang()+"\n";
			
			guiMailChoKhachHang(nguoiNhan.getEmail(), noiDung, format.format((Double) session.getAttribute("tongtien")),thongTinNguoiNhan);
			cart.removeAll(cart);
			session.setAttribute("cart", cart);
			return "user/xacnhan";
		}
	}

	public void guiMailChoKhachHang(String email, String noiDung, String tongTien, String thongTinNguoiNhan) {
		try {
			Properties properties = System.getProperties();
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.port", "465");
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			properties.put("mail.smtp.socketFactory.port", "465");
			Session session = Session.getDefaultInstance(properties, null);
			session.setDebug(true);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("HoangTheLongxm40@gmail.com"));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setContent("C???m ??n b???n ???? ?????t mua ??i???n tho???i t???i QMobile. \n" + "S???n ph???m b???n mua g???m: \n" + noiDung
					+ "T???ng ti???n: " + tongTien + "\n" + "Th??ng tin ng?????i nh???n:\n" + thongTinNguoiNhan
					+ "Xin ch??o v?? h???n g???p l???i\n", "text/plain; charset=UTF-8");
			message.setSubject("QMobile");
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", "HoangTheLongxm40@gmail.com", "Dkm0983382780");
			transport.sendMessage(message, message.getAllRecipients());
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
