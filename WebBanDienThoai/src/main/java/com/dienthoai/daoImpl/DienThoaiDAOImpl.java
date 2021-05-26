package com.dienthoai.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.DienThoaiDAO;
import com.dienthoai.entity.DienThoai;
import com.dienthoai.entity.ThuongHieu;
@Repository
public class DienThoaiDAOImpl implements DienThoaiDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	@Override
	public void saveDienThoai(DienThoai dt) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(dt);
	}
	@Transactional
	@Override
	public void deleteDienThoai(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		DienThoai dt=currentSession.get(DienThoai.class, id);
		currentSession.delete(dt);
	}
	@Transactional
	@Override
	public DienThoai getDienThoai(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		DienThoai dt=currentSession.get(DienThoai.class, id);
		return dt;
	}
	@Transactional
	@Override
	public List<DienThoai> getListDienThoai() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<DienThoai> theQuery = currentSession.createQuery("from DienThoai", DienThoai.class);
		List<DienThoai> dts = theQuery.getResultList();
		return dts;
	}
	@Transactional
	@Override
	public List<DienThoai> getListTheoTen(String tenDT) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<DienThoai> theQuery = currentSession.createNativeQuery("select * from DienThoai where tenDT like N'%"+tenDT+"%'", DienThoai.class);
		List<DienThoai> dts = theQuery.getResultList();
		return dts;
	}
	@Transactional
	@Override
	public List<DienThoai> getListDienThoaiGiamGia() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<DienThoai> theQuery = currentSession.createQuery("from DienThoai where giamGia>0 ", DienThoai.class);
		List<DienThoai> dts = theQuery.getResultList();
		return dts;	
	}
	@Transactional
	@Override
	public List<DienThoai> getListDienThoaiBanChay() {
		List<DienThoai> dts = new ArrayList<DienThoai>();
		Session currentSession = sessionFactory.getCurrentSession();
		String sql = "select id, SUM(ct.soLuong) as sum from DIENTHOAI as dt join CHITIETHOADON ct on dt.id = ct.id_DienThoai\r\n"
				+ "group by dt.id,dt.tenDT\r\n"
				+ "order by sum desc";
		List<?> list = currentSession.createNativeQuery(sql).getResultList();
		for (Object object : list) {
			Object[] temp = (Object[]) object;
			DienThoai dt = currentSession.find(DienThoai.class, temp[0]);
			dts.add(dt);
		}
		return dts;	
	}
	@Transactional
	@Override
	public List<ThuongHieu> getListThuongHieu() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<ThuongHieu> theQuery = currentSession.createQuery("from ThuongHieu ", ThuongHieu.class);
		List<ThuongHieu> ths = theQuery.getResultList();
		return ths;	
	}
	@Override
	public List<DienThoai> getListDienThoaiTheoPage(int page, List<DienThoai> list) {
		// TODO Auto-generated method stub
		int position = (page-1)*7;
		int end = position + 7;
		
		List<DienThoai> dienThoais = new ArrayList<DienThoai>();
		
		while(position < end && list.size() > position) {
			dienThoais.add(list.get(position));
			position++;
		}
		
		return dienThoais;
	}
	@Transactional
	@Override
	public List<DienThoai> getListDienThoaiCoSapXep(String sortName) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<DienThoai> dts = new ArrayList<DienThoai>();
		String sql = null;
		switch (sortName) {
		case "gia_asc":
			sql = "select * from DIENTHOAI order by (giaDT*(100-giamGia))/100  asc";
			dts = currentSession.createNativeQuery(sql, DienThoai.class).getResultList();
			break;
		case "gia_desc ":
			sql = "select * from DIENTHOAI order by (giaDT*(100-giamGia))/100  desc";
			dts = currentSession.createNativeQuery(sql, DienThoai.class).getResultList();
			break;
		case "giamgia":
			sql = "select * from DIENTHOAI where giamGia > 0 order by (giaDT*(100-giamGia))/100  asc";
			dts = currentSession.createNativeQuery(sql, DienThoai.class).getResultList();
			break;
		case "banchay":
			sql = "select id, SUM(ct.soLuong) as sum from DIENTHOAI as dt join CHITIETHOADON ct on dt.id = ct.id_DienThoai\r\n"
					+ "group by dt.id,dt.tenDT\r\n"
					+ "order by sum desc";
			List<?> list = currentSession.createNativeQuery(sql).getResultList();
			for (Object object : list) {
				Object[] temp = (Object[]) object;
				DienThoai dt = currentSession.find(DienThoai.class, temp[0]);
				dts.add(dt);
			}
			break;

		default:
			sql = "select * from DIENTHOAI order by (giaDT*(100-giamGia))/100  desc";
			dts = currentSession.createNativeQuery(sql, DienThoai.class).getResultList();
			break;
		}
		return dts;
	}
	@Override
	@Transactional
	public List<DienThoai> getListDienThoaiSearch(String searchName) {
		 Session currentSession = sessionFactory.getCurrentSession();
		 List<DienThoai> dts = new ArrayList<DienThoai>();
		 String sql =null;
	        if (searchName != null && searchName.trim().length() > 0) {
	            // search for firstName or lastName ... case insensitive
	        	String theName = "N'%"+searchName+"%'";
	        	sql = "select dt.* from DIENTHOAI dt join THUONGHIEU th  on dt.id_ThuongHieu = th.id join THONGSO ts on dt.id_ThongSo = ts.id\r\n"
	        			+ "where LOWER(tenDT) like("+theName+") or LOWER(baoHanh) like("+theName+") or LOWER(kichThuoc) like("+theName+") or LOWER(mauSac) like("+theName+") or LOWER(tenTH) like("+theName+") or LOWER(xuatXu) like("+theName+") or LOWER(heDieuHanh) like("+theName+") or LOWER(manHinh) like("+theName+") or LOWER(boNho) like("+theName+") or LOWER(camera) like("+theName+") or LOWER(pin) like("+theName+") or LOWER(ram) like("+theName+") or LOWER(sim) like("+theName+")";
	        }else {
				sql = "select * from DIENTHOAI";
			}
	        dts = currentSession.createNativeQuery(sql, DienThoai.class).getResultList();
	        return dts;   
	}

}
