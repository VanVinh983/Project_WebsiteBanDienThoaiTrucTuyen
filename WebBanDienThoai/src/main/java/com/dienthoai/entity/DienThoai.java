package com.dienthoai.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;


import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "DIENTHOAI")
public class DienThoai implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Nationalized
	private String tenDT;
	
	@Nationalized
	private String baoHanh;
	private float giaDT;
	private float giamGia;
	private int soLuongTon;
	private float thue;
	
	private float trongLuong;
	
	@Nationalized
	private String kichThuoc;
	
	@Nationalized
	private String mauSac;
	
	@Nationalized
	private String anhURL;
	
	@ManyToOne
	@JoinColumn(name = "id_DanhMuc")
	private DanhMuc danhMuc;
	
	@ManyToOne
	@JoinColumn(name = "id_ThuongHieu")
	private ThuongHieu thuongHieu;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_ThongSo")
	private ThongSo thongSo;
	
	
	@OneToMany(mappedBy = "dienThoai", fetch = FetchType.LAZY)
	@JsonIgnore
	private List<ChiTietHoaDon> danhSachSanPhamHoaDon;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenDT() {
		return tenDT;
	}

	public void setTenDT(String tenDT) {
		this.tenDT = tenDT;
	}

	public String getBaoHanh() {
		return baoHanh;
	}

	public void setBaoHanh(String baoHanh) {
		this.baoHanh = baoHanh;
	}
	public float getGiaDT() {
		return giaDT;
	}

	public void setGiaDT(float giaDT) {
		this.giaDT = giaDT;
	}

	public float getGiamGia() {
		return giamGia;
	}

	public void setGiamGia(float giamGia) {
		this.giamGia = giamGia;
	}

	public int getSoLuongTon() {
		return soLuongTon;
	}

	public void setSoLuongTon(int soLuongTon) {
		this.soLuongTon = soLuongTon;
	}

	public float getThue() {
		return thue;
	}

	public void setThue(float thue) {
		this.thue = thue;
	}

	public float getTrongLuong() {
		return trongLuong;
	}

	public void setTrongLuong(float trongLuong) {
		this.trongLuong = trongLuong;
	}

	public String getKichThuoc() {
		return kichThuoc;
	}

	public void setKichThuoc(String kichThuoc) {
		this.kichThuoc = kichThuoc;
	}

	public String getMauSac() {
		return mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getAnhURL() {
		return anhURL;
	}

	public void setAnhURL(String anhURL) {
		this.anhURL = anhURL;
	}

	public ThuongHieu getThuongHieu() {
		return thuongHieu;
	}

	public void setThuongHieu(ThuongHieu thuongHieu) {
		this.thuongHieu = thuongHieu;
	}

	public ThongSo getThongSo() {
		return thongSo;
	}

	public void setThongSo(ThongSo thongSo) {
		this.thongSo = thongSo;
	}

	

	public List<ChiTietHoaDon> getDanhSachSanPhamHoaDon() {
		return danhSachSanPhamHoaDon;
	}

	public void setDanhSachSanPhamHoaDon(List<ChiTietHoaDon> danhSachSanPhamHoaDon) {
		this.danhSachSanPhamHoaDon = danhSachSanPhamHoaDon;
	}


	
	public DienThoai(Integer id, String tenDT, String baoHanh, float giaDT, float giamGia, int soLuongTon, float thue,
			float trongLuong, String kichThuoc, String mauSac, String anhURL) {
		super();
		this.id = id;
		this.tenDT = tenDT;
		this.baoHanh = baoHanh;
		this.giaDT = giaDT;
		this.giamGia = giamGia;
		this.soLuongTon = soLuongTon;
		this.thue = thue;
		this.trongLuong = trongLuong;
		this.kichThuoc = kichThuoc;
		this.mauSac = mauSac;
		this.anhURL = anhURL;
	}

	public DienThoai(Integer id, String tenDT, String baoHanh, float giaDT, float giamGia, int soLuongTon, float thue,
			float trongLuong, String kichThuoc, String mauSac, String anhURL, DanhMuc danhMuc, ThuongHieu thuongHieu,
			ThongSo thongSo) {
		super();
		this.id = id;
		this.tenDT = tenDT;
		this.baoHanh = baoHanh;
		this.giaDT = giaDT;
		this.giamGia = giamGia;
		this.soLuongTon = soLuongTon;
		this.thue = thue;
		this.trongLuong = trongLuong;
		this.kichThuoc = kichThuoc;
		this.mauSac = mauSac;
		this.anhURL = anhURL;
		this.danhMuc = danhMuc;
		this.thuongHieu = thuongHieu;
		this.thongSo = thongSo;
	}

	public DienThoai(Integer id, String tenDT, String baoHanh, float giaDT, float giamGia, int soLuongTon, float thue,
			float trongLuong, String kichThuoc, String mauSac, String anhURL, DanhMuc danhMuc, ThuongHieu thuongHieu,
			ThongSo thongSo,  List<ChiTietHoaDon> danhSachSanPhamHoaDon) {
		super();
		this.id = id;
		this.tenDT = tenDT;
		this.baoHanh = baoHanh;
		this.giaDT = giaDT;
		this.giamGia = giamGia;
		this.soLuongTon = soLuongTon;
		this.thue = thue;
		this.trongLuong = trongLuong;
		this.kichThuoc = kichThuoc;
		this.mauSac = mauSac;
		this.anhURL = anhURL;
		this.danhMuc = danhMuc;
		this.thuongHieu = thuongHieu;
		this.thongSo = thongSo;
		this.danhSachSanPhamHoaDon = danhSachSanPhamHoaDon;
	}

	public DienThoai() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}
	
	
}
