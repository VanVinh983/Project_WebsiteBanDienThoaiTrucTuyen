package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.DienThoai;

public interface DienThoaiService {
	public void saveDienThoai(DienThoai dt);
	public void deleteDienThoai(int id);
	public DienThoai getDienThoai(int id);
	public List<DienThoai> getListDienThoai();
	public List<DienThoai> getListTheoTen(String tenDT);
}
