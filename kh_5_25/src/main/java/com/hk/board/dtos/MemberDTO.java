package com.hk.board.dtos;

public class MemberDTO {
	public String mem_id;
	public String mem_pw;
	public String mem_name;
	public String mem_email;
	public String mem_phone;
	public String mem_oaddress;
	public String mem_address;
	public String mem_detailaddress;
	public String mem_type;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_oaddress() {
		return mem_oaddress;
	}
	public void setMem_oaddress(String mem_oaddress) {
		this.mem_oaddress = mem_oaddress;
	}	
	public String getMem_address() {
		return mem_address;
	}
	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}
	public String getMem_detailaddress() {
		return mem_detailaddress;
	}
	public void setMem_detailaddress(String mem_detailaddress) {
		this.mem_detailaddress = mem_detailaddress;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	public void setAuthKey(String authKey) {
		// TODO Auto-generated method stub
		
	}
	public String getAuthKey() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String toString() {
		return "MemberDTO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_email="
				+ mem_email + ", mem_phone=" + mem_phone + ", mem_oaddress=" + mem_oaddress + ", mem_address="
				+ mem_address + ", mem_detailaddress=" + mem_detailaddress + ", mem_type=" + mem_type + "]";
	}
	
}
