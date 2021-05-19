package com.dienthoai.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.HoaDonDAO;
import com.dienthoai.entity.HoaDon;
import com.dienthoai.entity.PhuongThucThanhToan;

@Repository
public class HoaDonDAOImpl implements HoaDonDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	@Override
	public void saveHoaDon(HoaDon hd) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(hd);
	}

	@Transactional
	@Override
	public HoaDon getHoaDon(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		HoaDon hd = currentSession.get(HoaDon.class, id);
		return hd;
	}

	@Transactional
	@Override
	public List<HoaDon> getListHoaDon() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Query<HoaDon> theQuery = currentSession.createQuery("from HoaDon", HoaDon.class);
		List<HoaDon> hds = theQuery.getResultList();
		return hds;
	}

	@Transactional
	@Override
	public List<PhuongThucThanhToan> layTatCaPhuongThucThanhToan() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		List<PhuongThucThanhToan> list = currentSession
				.createQuery("from PhuongThucThanhToan", PhuongThucThanhToan.class).getResultList();
		return list;
	}

}
