package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.ThongSoDAO;
import com.dienthoai.entity.ThongSo;
import com.dienthoai.service.ThongSoService;

@Service
public class ThongSoServiceImpl implements ThongSoService {
	@Autowired
	private ThongSoDAO thongSoDAO;

	@Override
	@Transactional
	public void saveThongSo(ThongSo ts) {
		thongSoDAO.saveThongSo(ts);
	}

	@Override
	@Transactional
	public void deleteThongSo(int id) {
		thongSoDAO.deleteThongSo(id);
	}

	@Override
	public ThongSo getThongSo(int id) {
		return thongSoDAO.getThongSo(id);
	}

	@Override
	@Transactional
	public List<ThongSo> getListThongSo() {
		return thongSoDAO.getListThongSo();
	}

}
