package com.dienthoai.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.HoaDonDAO;
import com.dienthoai.entity.DienThoai;
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
		Query<HoaDon> theQuery = currentSession.createQuery("from HoaDon order by id", HoaDon.class);
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

	@Override
	public PhuongThucThanhToan getPhuongThuc(int id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		PhuongThucThanhToan pttt=currentSession.get(PhuongThucThanhToan.class, id);
		return pttt;
	}

	@Override
	public List<HoaDon> getListHoaDonTheoPage(int page, List<HoaDon> list) {
		// TODO Auto-generated method stub
		int position = (page-1)*9;
		int end = position + 9;
		
		List<HoaDon> hoaDons = new ArrayList<HoaDon>();
		
		while(position < end && list.size() > position) {
			hoaDons.add(list.get(position));
			position++;
		}
		
		return hoaDons;
	}

}
