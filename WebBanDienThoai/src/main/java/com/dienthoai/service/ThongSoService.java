package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.ThongSo;

public interface ThongSoService {
	public void saveThongSo(ThongSo dt);
	public void deleteThongSo(int id);
	public ThongSo getThongSo(int id);
	public List<ThongSo> getListThongSo();
	
}
