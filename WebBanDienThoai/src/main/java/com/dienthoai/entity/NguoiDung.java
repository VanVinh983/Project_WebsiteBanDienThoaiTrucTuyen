package com.dienthoai.entity;

import java.io.Serializable;
import java.util.Collection;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "NGUOIDUNG")
public class NguoiDung implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Nationalized
	private String tenNguoiDung;
	
	private String soDienThoai;
	
	@Nationalized
	private String diaChi;
	
	@Nationalized
	private String email;
	
	@Nationalized
	private String tenDangNhap;
	
	@Nationalized 
	private String matKhau;
	
	@Nationalized 
	private String vaiTro;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngayTao;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "NGUOIDUNGS_ROLES", 
	joinColumns = @JoinColumn(name = "nguoiDung_id"), 
	inverseJoinColumns = @JoinColumn(name = "role_id"))
	@JsonIgnore
	private Collection<Role> roles;

	public String getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(String vaiTro) {
		this.vaiTro = vaiTro;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenNguoiDung() {
		return tenNguoiDung;
	}

	public void setTenNguoiDung(String tenNguoiDung) {
		this.tenNguoiDung = tenNguoiDung;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

	public Collection<Role> getRoles() {
		return roles;
	}

	public void setRoles(Collection<Role> roles) {
		this.roles = roles;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public NguoiDung() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NguoiDung(Integer id, String tenNguoiDung, String soDienThoai, String diaChi, String email,
			String tenDangNhap, String matKhau, String vaiTro, Date ngayTao, Collection<Role> roles) {
		super();
		this.id = id;
		this.tenNguoiDung = tenNguoiDung;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.email = email;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
		this.ngayTao = ngayTao;
		this.roles = roles;
	}

	public NguoiDung(Integer id, String tenNguoiDung, String soDienThoai, String diaChi, String email,
			String tenDangNhap, String matKhau, String vaiTro, Date ngayTao) {
		super();
		this.id = id;
		this.tenNguoiDung = tenNguoiDung;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.email = email;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
		this.ngayTao = ngayTao;
	}

	@Override
	public String toString() {
		return "NguoiDung [id=" + id + ", tenNguoiDung=" + tenNguoiDung + ", soDienThoai=" + soDienThoai + ", diaChi="
				+ diaChi + ", email=" + email + ", tenDangNhap=" + tenDangNhap + ", matKhau=" + matKhau + ", vaiTro="
				+ vaiTro + ", ngayTao=" + ngayTao + ", roles=" + roles + "]";
	}

	

	
	
}
