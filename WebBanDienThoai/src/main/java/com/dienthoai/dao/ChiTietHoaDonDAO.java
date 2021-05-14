package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.ChiTietHoaDon;

public interface ChiTietHoaDonDAO {
	public ChiTietHoaDon getChiTietHoaDon(int id);
	public List<ChiTietHoaDon> getAllChiTietHoaDon();
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	
}
