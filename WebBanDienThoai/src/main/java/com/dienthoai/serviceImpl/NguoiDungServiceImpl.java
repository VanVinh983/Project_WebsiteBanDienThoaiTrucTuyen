package com.dienthoai.serviceImpl;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dienthoai.dao.NguoiDungDAO;
import com.dienthoai.dao.RoleDao;
import com.dienthoai.entity.NguoiDung;
import com.dienthoai.entity.Role;
import com.dienthoai.service.NguoiDungService;

@Service
public class NguoiDungServiceImpl implements NguoiDungService {
	@Autowired
	private NguoiDungDAO nguoiDungDAO;
	
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	@Transactional
	public void saveNguoiDung(NguoiDung nguoiDung) {
		String role="ROLE_USER";
		NguoiDung user=new NguoiDung();
		user.setTenNguoiDung(nguoiDung.getTenNguoiDung());
		user.setTenDangNhap(nguoiDung.getTenDangNhap());
		user.setEmail(nguoiDung.getEmail());
		user.setDiaChi(nguoiDung.getDiaChi());
		user.setSoDienThoai(nguoiDung.getSoDienThoai());
		user.setMatKhau(passwordEncoder.encode(nguoiDung.getMatKhau()));
		user.setNgayTao(nguoiDung.getNgayTao());
		user.setVaiTro(role);
		user.setRoles(Arrays.asList(roleDao.findRoleByName(role)));
		
		nguoiDungDAO.saveNguoiDung(user);
	}

	@Override
	@Transactional
	public void deleteNguoiDung(int id) {
		nguoiDungDAO.deleteNguoiDung(id);
	}

	@Override
	@Transactional
	public NguoiDung getNguoiDung(int id) {
		return nguoiDungDAO.getNguoiDung(id);
	}

	@Override
	@Transactional
	public List<NguoiDung> getListNguoiDung() {
		return nguoiDungDAO.getListNguoiDung();
	}

	@Override
	@Transactional
	public NguoiDung dangNhapAdmin(String tenDangnhap, String matKhau) {
		// TODO Auto-generated method stub
		return nguoiDungDAO.dangNhapAdmin(tenDangnhap, matKhau);
	}

	@Override
	@Transactional
	public NguoiDung getTenDangNhap(String tenDangNhap) {
		// TODO Auto-generated method stub
		return nguoiDungDAO.getTenDangNhap(tenDangNhap);
	}

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		NguoiDung nguoiDung = nguoiDungDAO.getTenDangNhap(username);
		if (nguoiDung == null) {
			throw new UsernameNotFoundException("Tên đăng nhập hoặc mật khẩu không hợp lệ.");
		}
		return new org.springframework.security.core.userdetails.User(nguoiDung.getTenDangNhap(), nguoiDung.getMatKhau(),
				mapRolesToAuthorities(nguoiDung.getRoles()));
		
	}
	private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
	}
	
}
