package com.dienthoai.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.BinhLuanDao;
import com.dienthoai.entity.BinhLuan;
import com.dienthoai.service.BinhLuanService;

@Service
public class BinhLuanServiceImpl implements BinhLuanService{
	@Autowired
	private BinhLuanDao binhLuanDao;
	@Transactional
	@Override
	public List<BinhLuan> getListBinhLuan() {
		// TODO Auto-generated method stub
		return binhLuanDao.getListBinhLuan();
	}
	
	@Transactional
	@Override
	public void themBinhLuan(BinhLuan binhLuan) {
		// TODO Auto-generated method stub
		binhLuanDao.themBinhLuan(binhLuan);
	}
	
}
