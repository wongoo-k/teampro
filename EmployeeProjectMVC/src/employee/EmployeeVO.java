package employee;

import java.util.Date;

public class EmployeeVO {
	// Table명은 Employee
	int eno;
	String ename;
	String job;
	int manager;
	Date hireDate;
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
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
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
		return "employeeVO [eno=" + eno + ", ename=" + ename + ", job=" + job + ", manager=" + manager + ", hireDate="
				+ hireDate + ", salary=" + salary + ", commission=" + commission + ", dno=" + dno + "]";
	}
	
	// getter / setter
	
	// toString (class내에 전체 정보를 보기위한)
	
	// constructor (생성자)
}
