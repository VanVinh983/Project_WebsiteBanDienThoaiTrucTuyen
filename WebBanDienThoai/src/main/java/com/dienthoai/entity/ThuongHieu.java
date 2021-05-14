package com.dienthoai.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Nationalized;

@Entity
@Table(name = "THUONGHIEU")
public class ThuongHieu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Nationalized
	private String tenTH;
	
	@Nationalized
	private String xuatXu;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenTH() {
		return tenTH;
	}

	public void setTenTH(String tenTH) {
		this.tenTH = tenTH;
	}

	public String getXuatXu() {
		return xuatXu;
	}

	public void setXuatXu(String xuatXu) {
		this.xuatXu = xuatXu;
	}

	public ThuongHieu(Integer id, String tenTH, String xuatXu) {
		super();
		this.id = id;
		this.tenTH = tenTH;
		this.xuatXu = xuatXu;
	}

	public ThuongHieu() {
		super();
	}

	@Override
	public String toString() {
		return "ThuongHieu [id=" + id + ", tenTH=" + tenTH + ", xuatXu=" + xuatXu + "]";
	}
	
	
}
