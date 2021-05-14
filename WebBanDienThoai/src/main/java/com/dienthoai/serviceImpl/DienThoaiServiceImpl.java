package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.DienThoaiDAO;
import com.dienthoai.entity.DienThoai;
import com.dienthoai.service.DienThoaiService;

@Service
public class DienThoaiServiceImpl implements DienThoaiService {
	@Autowired
	private DienThoaiDAO dienThoaiDAO;

	@Override
	@Transactional
	public void saveDienThoai(DienThoai dt) {
		dienThoaiDAO.saveDienThoai(dt);
	}

	@Override
	@Transactional
	public void deleteDienThoai(int id) {
		dienThoaiDAO.deleteDienThoai(id);
	}

	@Override
	public DienThoai getDienThoai(int id) {
		return dienThoaiDAO.getDienThoai(id);
	}

	@Override
	@Transactional
	public List<DienThoai> getListDienThoai() {
		return dienThoaiDAO.getListDienThoai();
	}

	@Override
	@Transactional
	public List<DienThoai> getListTheoTen(String tenDT) {
		// TODO Auto-generated method stub
		return dienThoaiDAO.getListTheoTen(tenDT);
	}

}
