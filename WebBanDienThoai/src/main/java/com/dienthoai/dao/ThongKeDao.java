package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.DienThoai;

public interface ThongKeDao {
	public int getDonHangTheoThang();
	public double getDoanhThuTheoThangHienTai();
	public double getDoanhThuTheoThanggTruoc();
	public List<DienThoai> getListDienThoaiBanChay();
}
