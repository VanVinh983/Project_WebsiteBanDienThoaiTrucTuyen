package com.dienthoai.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.DienThoaiDAO;
import com.dienthoai.entity.DienThoai;
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
}
