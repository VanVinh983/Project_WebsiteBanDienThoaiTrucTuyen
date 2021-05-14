package com.dienthoai.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class DienThoaiHoaDon_PK  implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer dienThoai;
	private Integer hoaDon;
	public Integer getDienThoai() {
		return dienThoai;
	}
	public void setDienThoai(Integer dienThoai) {
		this.dienThoai = dienThoai;
	}
	public Integer getHoaDon() {
		return hoaDon;
	}
	public void setHoaDon(Integer hoaDon) {
		this.hoaDon = hoaDon;
	}
	public DienThoaiHoaDon_PK(Integer dienThoai, Integer hoaDon) {
		super();
		this.dienThoai = dienThoai;
		this.hoaDon = hoaDon;
	}
	public DienThoaiHoaDon_PK() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dienThoai == null) ? 0 : dienThoai.hashCode());
		result = prime * result + ((hoaDon == null) ? 0 : hoaDon.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DienThoaiHoaDon_PK other = (DienThoaiHoaDon_PK) obj;
		if (dienThoai == null) {
			if (other.dienThoai != null)
				return false;
		} else if (!dienThoai.equals(other.dienThoai))
			return false;
		if (hoaDon == null) {
			if (other.hoaDon != null)
				return false;
		} else if (!hoaDon.equals(other.hoaDon))
			return false;
		return true;
	}
	
	

}
