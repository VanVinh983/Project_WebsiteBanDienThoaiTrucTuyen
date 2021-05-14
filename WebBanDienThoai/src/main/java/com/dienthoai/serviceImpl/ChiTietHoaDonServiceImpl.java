package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.ChiTietHoaDonDAO;
import com.dienthoai.entity.ChiTietHoaDon;
import com.dienthoai.service.ChiTietHoaDonService;

@Service
public class ChiTietHoaDonServiceImpl implements ChiTietHoaDonService {
	@Autowired
	private ChiTietHoaDonDAO chiTietHoaDonDAO;
	
	
	@Override
	@Transactional
	public ChiTietHoaDon getChiTietHoaDon(int id) {
		return chiTietHoaDonDAO.getChiTietHoaDon(id);
	}

	@Override
	@Transactional
	public List<ChiTietHoaDon> getAllChiTietHoaDon() {
		return chiTietHoaDonDAO.getAllChiTietHoaDon();
	}

	@Override
	@Transactional
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		chiTietHoaDonDAO.themChiTietHoaDon(chiTietHoaDon);
	}
	

	

	
	
}
