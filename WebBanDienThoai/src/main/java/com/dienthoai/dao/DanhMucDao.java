package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.DanhMuc;

public interface DanhMucDao {
	public void saveDanhMuc(DanhMuc danhMuc);
	public void deleteDanhMuc(int id);
	public DanhMuc getDanhMuc(int id);
	public DanhMuc getDanhMuc(String tenDanhMuc);
	public List<DanhMuc> getListDanhMuc();
	public List<DanhMuc> getListTheoTen(String tenDanhMuc);
}
