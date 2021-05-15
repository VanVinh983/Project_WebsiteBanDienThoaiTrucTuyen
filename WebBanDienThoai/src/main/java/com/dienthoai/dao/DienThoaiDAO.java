package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.DienThoai;

public interface DienThoaiDAO {
	public void saveDienThoai(DienThoai dt);
	public void deleteDienThoai(int id);
	public DienThoai getDienThoai(int id);
	public List<DienThoai> getListDienThoai();
	public List<DienThoai> getListTheoTen(String tenDT);
	public List<DienThoai> getListDienThoaiGiamGia();
	public List<DienThoai> getListDienThoaiBanChay();
}
