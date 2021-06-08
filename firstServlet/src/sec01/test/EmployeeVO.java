package sec01.test;

import java.util.Date;

public class EmployeeVO {
//	"ENO" NUMBER(4,0), 
//	"ENAME" VARCHAR2(10), 
//	"JOB" VARCHAR2(9), 
//	"MANAGER" NUMBER(4,0), 
//	"HIREDATE" DATE, 
//	"SALARY" NUMBER(7,2), 
//	"COMMISSION" NUMBER(7,2), 
//	"DNO" NUMBER(2,0), 
	int eno;
	String ename;
	String job;
	int manager;
	Date hiredate;
	int salary;
	int commission;
	int dno;
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getManager() {
		return manager;
	}
	public void setManager(int manager) {
		this.manager = manager;
	}
	public Date getHirerdate() {
		return hiredate;
	}
	public void setHirerdate(Date hirerdate) {
		this.hiredate = hirerdate;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getCommission() {
		return commission;
	}
	public void setCommission(int commission) {
		this.commission = commission;
	}
	public int getDno() {
		return dno;
	}
	public void setDno(int dno) {
		this.dno = dno;
	}
	@Override
	public String toString() {
		return "EmployeeVO [eno=" + eno + ", ename=" + ename + ", job=" + job + ", manager=" + manager + ", hirerdate="
				+ hiredate + ", salary=" + salary + ", commission=" + commission + ", dno=" + dno + "]";
	}
	
}
