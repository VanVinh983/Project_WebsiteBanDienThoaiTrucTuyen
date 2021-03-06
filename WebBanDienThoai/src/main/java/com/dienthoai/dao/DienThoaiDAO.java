package com.dienthoai.dao;

import java.util.List;

import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.ThuongHieu;

public interface DienThoaiDAO {
	public void saveDienThoai(DienThoai dt);
	public void deleteDienThoai(int id);
	public DienThoai getDienThoai(int id);
	public List<DienThoai> getListDienThoai();
	public List<DienThoai> getListTheoTen(String tenDT);
	public List<DienThoai> getListDienThoaiGiamGia();
	public List<DienThoai> getListDienThoaiBanChay();
	public List<DienThoai> getListDienThoaiLienQuan(String tenDM);
	public List<ThuongHieu> getListThuongHieu();
	public List<DienThoai> getListDienThoaiTheoPage(int page, int element, List<DienThoai> list);
	public List<DienThoai> getListDienThoaiCoSapXep(String sortName,String searchName,String memory);
	public List<DienThoai> getListDienThoaiSearch(String searchName);
	public List<DienThoai> getListDienThoaiTheoThuongHieu(int idThuongHieu);
	
}
