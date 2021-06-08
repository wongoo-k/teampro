package sec01.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EmployeeDAO {
	private Statement stmt;
	private Connection con;
	
	public List<EmployeeVO> listEmployees() {
		List<EmployeeVO> list = new ArrayList<EmployeeVO>();
		try {
			connDB();
			String query = "select * from employee";
			System.out.println("Query = " + query);
			ResultSet rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				int eno = rs.getInt("eno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int manager = rs.getInt("manager");
				Date hiredate = rs.getDate("hiredate");
				int salary = rs.getInt("salary");
				int commission = rs.getInt("commission");
				int dno = rs.getInt("dno");
				
				EmployeeVO vo = new EmployeeVO();
				vo.setEno(eno);
				vo.setEname(ename);
				vo.setJob(job);
				vo.setManager(manager);
				vo.setHirerdate(hiredate);
				vo.setSalary(salary);
				vo.setCommission(commission);
				vo.setDno(dno);
				list.add(vo);
			}
			rs.close();
			stmt.close();
			con.close();
					
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	private void connDB() {
		// TODO Auto-generated method stub
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "STUDY";
		String pwd = "STUDY";
		
		try {
			Class.forName(driver);
			System.out.println("Oracle 드라이버 로딩 성공");
			con = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection 성공");
			stmt = con.createStatement();
			System.out.println("Statement 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
