package com.DongHang_ComeFunny.www.model.vo;

import java.util.Date;

public class Order {
	private int pONo;
	private int oUNo;
	private String oImpUid;
	private String oMerChantUid;
	private String oName;
	private int oQunatity;
	private int oPrice;
	private Date oDate;
	private int oisdel;
	@Override
	public String toString() {
		return "Order [pONo=" + pONo + ", oUNo=" + oUNo + ", oImpUid=" + oImpUid + ", oMerChantUid=" + oMerChantUid
				+ ", oName=" + oName + ", oQunatity=" + oQunatity + ", oPrice=" + oPrice + ", oDate=" + oDate
				+ ", oisdel=" + oisdel + "]";
	}
	public int getpONo() {
		return pONo;
	}
	public void setpONo(int pONo) {
		this.pONo = pONo;
	}
	public int getoUNo() {
		return oUNo;
	}
	public void setoUNo(int oUNo) {
		this.oUNo = oUNo;
	}
	public String getoImpUid() {
		return oImpUid;
	}
	public void setoImpUid(String oImpUid) {
		this.oImpUid = oImpUid;
	}
	public String getoMerChantUid() {
		return oMerChantUid;
	}
	public void setoMerChantUid(String oMerChantUid) {
		this.oMerChantUid = oMerChantUid;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public int getoQunatity() {
		return oQunatity;
	}
	public void setoQunatity(int oQunatity) {
		this.oQunatity = oQunatity;
	}
	public int getoPrice() {
		return oPrice;
	}
	public void setoPrice(int oPrice) {
		this.oPrice = oPrice;
	}
	public Date getoDate() {
		return oDate;
	}
	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}
	public int getOisdel() {
		return oisdel;
	}
	public void setOisdel(int oisdel) {
		this.oisdel = oisdel;
	}
	
}