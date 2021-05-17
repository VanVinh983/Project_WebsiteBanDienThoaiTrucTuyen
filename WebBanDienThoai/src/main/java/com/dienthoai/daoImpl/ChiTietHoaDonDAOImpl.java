package com.dienthoai.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.ChiTietHoaDonDAO;
import com.dienthoai.entity.ChiTietHoaDon;
@Repository
public class ChiTietHoaDonDAOImpl implements ChiTietHoaDonDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public ChiTietHoaDon getChiTietHoaDon(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		ChiTietHoaDon cthd = currentSession.createNativeQuery("select * from CHITIETHOADON where id_HoaDon="+id+"",ChiTietHoaDon.class).getSingleResult();
		return cthd;
	}
	@Transactional
	@Override
	public List<ChiTietHoaDon> getAllChiTietHoaDon() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<ChiTietHoaDon> theQuery = currentSession.createQuery("from ChiTietHoaDon", ChiTietHoaDon.class);
		List<ChiTietHoaDon> cthds = theQuery.getResultList();
		return cthds;
	}
	@Transactional
	@Override
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(chiTietHoaDon);
	}
	

	

	
	
}
