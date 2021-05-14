package com.dienthoai.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.NguoiDungDAO;
import com.dienthoai.entity.NguoiDung;
@Repository
public class NguoiDungDAOImpl implements NguoiDungDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public void saveNguoiDung(NguoiDung nguoiDung) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(nguoiDung);
	}
	@Transactional
	@Override
	public void deleteNguoiDung(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		NguoiDung nguoiDung=currentSession.get(NguoiDung.class, id);
		currentSession.delete(nguoiDung);
	}
	@Transactional
	@Override
	public NguoiDung getNguoiDung(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		NguoiDung nguoiDung = currentSession.get(NguoiDung.class, id);
		return nguoiDung;
	}
	@Transactional
	@Override
	public List<NguoiDung> getListNguoiDung() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NguoiDung> theQuery = currentSession.createQuery("from NguoiDung", NguoiDung.class);
		List<NguoiDung> nguoiDung = theQuery.getResultList();
		return nguoiDung;
	}
	@Transactional
	@Override
	public NguoiDung dangNhapAdmin(String tenDangnhap, String matKhau) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NguoiDung> theQuery=currentSession.createNativeQuery("select tenDangNhap, matKhau from NGUOIDUNG where tenDangNhap ='"+tenDangnhap+"' and matKhau='"+matKhau+"'", NguoiDung.class);
		NguoiDung admin=theQuery.getSingleResult();
		return admin;
	}
	@Override
	public NguoiDung getTenDangNhap(String tenDangNhap) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<NguoiDung> theQuery=currentSession.createQuery("from NguoiDung where tenDangNhap ='"+tenDangNhap+"'", NguoiDung.class);
		NguoiDung nguoiDung=null;
		try {
			nguoiDung=theQuery.getSingleResult();
		
		} catch (Exception e) {
			// TODO: handle exception
			nguoiDung=null;
		}
		return nguoiDung;
	}
	
	
}
