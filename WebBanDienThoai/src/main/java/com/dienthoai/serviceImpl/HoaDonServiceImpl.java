package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.HoaDonDAO;
import com.dienthoai.entity.HoaDon;
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

}
