package com.dienthoai.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.BinhLuanDao;
import com.dienthoai.entity.BinhLuan;

@Repository
public class BinhLuanDaoImpl implements BinhLuanDao{
	
	@Autowired
	private SessionFactory factory;
	
	@Transactional
	@Override
	public List<BinhLuan> getListBinhLuan() {
		Session session = factory.getCurrentSession();
		Query<BinhLuan> theQuery = session.createQuery("from BinhLuan", BinhLuan.class);
		List<BinhLuan> bls = theQuery.getResultList();
		return bls;
	}
	@Transactional
	@Override
	public void themBinhLuan(BinhLuan binhLuan) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(binhLuan);
	}

}
