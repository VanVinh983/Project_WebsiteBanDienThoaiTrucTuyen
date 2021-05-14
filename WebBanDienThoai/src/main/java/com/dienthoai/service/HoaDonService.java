package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.HoaDon;

public interface HoaDonService {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(int id);
	public List<HoaDon> getListHoaDon();
	
}
