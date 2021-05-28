package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.BinhLuan;

public interface BinhLuanService {
	public List<BinhLuan> getListBinhLuan();
	public void themBinhLuan(BinhLuan binhLuan);
	public List<BinhLuan> getListBinhLuanByIdDienThoai(int dtId);
}
