package com.dienthoai.service;

import java.util.List;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.ThuongHieu;

public interface DienThoaiService {
	public void saveDienThoai(DienThoai dt);
	public void deleteDienThoai(int id);
	public DienThoai getDienThoai(int id);
	public List<DienThoai> getListDienThoai();
	public List<DienThoai> getListTheoTen(String tenDT);
	public List<DienThoai> getDienThoaiGiamGia(); 
	public List<DienThoai> getDienTHoaiBanChay();
	public List<ThuongHieu> getListThuongHieu();
	public List<DienThoai> getListDienThoaiTheoPage(int page, List<DienThoai> list);
	public List<DienThoai> getListDienThoaiCoSapXep(String sort);
	public List<DienThoai> getListDienThoaiSearch(String searchName);
	public List<DienThoai> getListDienThoaiLienQuan(String tenDM);
	public List<DienThoai> getListDienThoaiTheoThuongHieu(int idThuongHieu);
}
