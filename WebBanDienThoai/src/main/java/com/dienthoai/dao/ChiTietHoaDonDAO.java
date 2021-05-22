package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.ChiTietHoaDon;

public interface ChiTietHoaDonDAO {
	public List<ChiTietHoaDon> getChiTietHoaDon(int id);
	public List<ChiTietHoaDon> getAllChiTietHoaDon();
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon);
	public void addChiTietHoaDon(int id_dienthoai,int id_hoadon,int soLuong);
}
