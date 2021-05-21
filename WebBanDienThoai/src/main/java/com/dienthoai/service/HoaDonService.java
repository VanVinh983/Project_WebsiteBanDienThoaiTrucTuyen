package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.PhuongThucThanhToan;

public interface HoaDonService {
	public void saveHoaDon(HoaDon hoaDon);
	public HoaDon getHoaDon(int id);
	public List<HoaDon> getListHoaDon();
	public List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan();
	public PhuongThucThanhToan getPhuongThuc(int id);
}
