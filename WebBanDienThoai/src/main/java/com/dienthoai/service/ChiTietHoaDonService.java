package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.ChiTietHoaDon;

public interface ChiTietHoaDonService {
	public ChiTietHoaDon getChiTietHoaDon(int id);
	public List<ChiTietHoaDon> getAllChiTietHoaDon();
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	
}
