package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.HoaDonDAO;
import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.PhuongThucThanhToan;
import com.dienthoai.service.HoaDonService;

@Service
public class HoaDonServiceImpl implements HoaDonService {
	@Autowired
	private HoaDonDAO hoaDonDAO;

	@Override
	@Transactional
	public void saveHoaDon(HoaDon hd) {
		hoaDonDAO.saveHoaDon(hd);
	}

	@Override
	@Transactional
	public HoaDon getHoaDon(int id) {
		return hoaDonDAO.getHoaDon(id);
	}

	@Override
	@Transactional
	public List<HoaDon> getListHoaDon() {
		return hoaDonDAO.getListHoaDon();
	}

	@Override
	@Transactional
	public List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan() {
		return hoaDonDAO.layTatCaPhuongThucThanhToan();
	}

	@Transactional
	@Override
	public PhuongThucThanhToan getPhuongThuc(int id) {
		// TODO Auto-generated method stub
		return hoaDonDAO.getPhuongThuc(id);
	}

	@Override
	@Transactional
	public List<HoaDon> getListHoaDonTheoPage(int page, List<HoaDon> list) {
		// TODO Auto-generated method stub
		return hoaDonDAO.getListHoaDonTheoPage(page, list);
	}

	@Transactional
	@Override
	public List<HoaDon> timKiemHoaDon(String search) {
		// TODO Auto-generated method stub
		return hoaDonDAO.timKiemHoaDon(search);
	}
	
	@Transactional
	@Override
	public List<HoaDon> xapXepTheo(String name, String search) {
		// TODO Auto-generated method stub
		return hoaDonDAO.xapXepTheo(name, search);
	}

	

}
