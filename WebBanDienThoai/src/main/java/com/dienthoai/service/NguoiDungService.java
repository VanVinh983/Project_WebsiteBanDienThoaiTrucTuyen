package com.dienthoai.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.dienthoai.entity.NguoiDung;

public interface NguoiDungService extends UserDetailsService{
	public void saveNguoiDung(NguoiDung nguoiDung);
	public void deleteNguoiDung(int id);
	public NguoiDung getNguoiDung(int id);
	public List<NguoiDung> getListNguoiDung();
	public NguoiDung dangNhapAdmin(String tenDangnhap, String matKhau);
	public NguoiDung getTenDangNhap(String tenDangNhap);
}
