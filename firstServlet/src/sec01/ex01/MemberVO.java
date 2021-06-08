package sec01.ex01;

import java.util.Date;

public class MemberVO {
	// 이 클래스의 역할은 DTO/VO DB테이블에 자료를 가져오거나, 저장할때 임시로 넣어서 사용하는 클래스

	// 필드 (DB테이블하고 1:1 매핑)
//	id varchar2(10) PRIMARY KEY,
//	pwd varchar2(10),
//	name varchar2(50),
//	email varchar2(50),
//	joinDate DATE DEFAULT sysdate 
	String id;
	String pwd;
	String name;
	String email;
	Date joinDate;
	
	// 메소드 (getter/setter/toString.. 존재)
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", joinDate=" + joinDate
				+ "]";
	}
	
	// 생성자(X)
}
