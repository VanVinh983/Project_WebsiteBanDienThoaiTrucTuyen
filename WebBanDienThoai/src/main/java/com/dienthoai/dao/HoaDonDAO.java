package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.HoaDon;

public interface HoaDonDAO {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(int id);
	public List<HoaDon> getListHoaDon();
	
}
