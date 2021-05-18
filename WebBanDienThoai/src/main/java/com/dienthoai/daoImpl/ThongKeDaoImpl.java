package com.dienthoai.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dienthoai.dao.ThongKeDao;

@Repository
public class ThongKeDaoImpl implements ThongKeDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int getDonHangTheoThang() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		int count=(int) currentSession.createNativeQuery("select  COUNT(id) from HOADON where MONTH(ngayLap)=MONTH(GETDATE())").getSingleResult();
		return count;
	}

	@Override
	public double getDoanhThuTheoThangHienTai() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		double doanhThu=(double) currentSession.createNativeQuery("select sum(ct.soLuong*dt.giaDT)\r\n"
				+ "from CHITIETHOADON ct \r\n"
				+ "join DIENTHOAI dt on dt.id=ct.id_DienThoai\r\n"
				+ "join HOADON hd on hd.id=ct.id_HoaDon\r\n"
				+ "where MONTH(hd.ngayLap)=MONTH(GETDATE())").getSingleResult();
		return doanhThu;
	}

	@Override
	public double getDoanhThuTheoThanggTruoc() {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		double doanhThu=(double) currentSession.createNativeQuery("select sum(ct.soLuong*dt.giaDT)\r\n"
				+ "from CHITIETHOADON ct \r\n"
				+ "join DIENTHOAI dt on dt.id=ct.id_DienThoai\r\n"
				+ "join HOADON hd on hd.id=ct.id_HoaDon\r\n"
				+ "where MONTH(hd.ngayLap)=MONTH(GETDATE()) - 1").getSingleResult();
		return doanhThu;
	}

	
}
