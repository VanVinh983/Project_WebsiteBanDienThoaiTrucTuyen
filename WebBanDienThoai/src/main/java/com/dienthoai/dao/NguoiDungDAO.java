package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.NguoiDung;

public interface NguoiDungDAO {
	public void saveNguoiDung(NguoiDung nguoiDung);
	public void deleteNguoiDung(int id);
	public NguoiDung getNguoiDung(int id);
	public List<NguoiDung> getListNguoiDung();
	public NguoiDung dangNhapAdmin(String tenDangnhap, String matKhau);
	public NguoiDung getTenDangNhap(String tenDangNhap);
	
}
