package employee;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

// Model 역할 (DB관련 작업)
public class EmployeeDAO {
	// 필드 선언 : JDBC6단계에서 사용할 필드

	private PreparedStatement pStmt;
	private Connection con;
	private DataSource dataFactory;

	// java의 기본 class
	// java.
	// javax.

	public EmployeeDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 메소드 선언 (기능) -- 사용자 전체목록 조회하기
	public List<EmployeeVO> listEmp() {
		List<EmployeeVO> list = new ArrayList<EmployeeVO>();

		try {
			// 1)2)3) 드라이버로딩,DB접속,쿼리 준비
			// connDB();
			con = dataFactory.getConnection();

			// 4)쿼리 실행
			String query = "select * from employee";
			System.out.println("query = " + query);
			pStmt = con.prepareStatement(query);
			ResultSet rs = pStmt.executeQuery(query); // DB는 Row단위처리 Row에는 Col이 포함되어 있고, Col=VO 필드명

			// 5)결과얻기
			while (rs.next()) {
				// db에 select해서 1개의 Row를 가져와서 java 변수에 저장..
				int eno = rs.getInt("eno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int manager = rs.getInt("manager");
				Date hireDate = rs.getDate("hireDate");
				int salary = rs.getInt("salary");
				int commission = rs.getInt("commission");
				int dno = rs.getInt("dno");

				// Array에 하나씩 쌓아서 나중에 한번에 리턴
				// Array에 하나씩 쌓기 위해서 getter/setter를 이용하여 class넣는다.
				EmployeeVO vo = new EmployeeVO();
				vo.setEno(eno);
				vo.setEname(ename);
				vo.setJob(job);
				vo.setManager(manager);
				vo.setHireDate(hireDate);
				vo.setSalary(salary);
				vo.setCommission(commission);
				vo.setDno(dno);

				// 위에 만든 class를 list (ArrayList)에 하나씩 순차적으로 넣는다.
				list.add(vo);
			}

			// 6)DB접속 해제
			rs.close();
			pStmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// List<MemberVO> 형태를 return 해야함..
		return list;
	}

	public int joinEmp(EmployeeVO vo) {
		int ret = 0;
		try {
			con = dataFactory.getConnection();
			String query = "INSERT INTO EMPLOYEE (ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, COMMISSION, DNO) VALUES(?, ?, ?, ?, sysdate, ?, ?, ?)";
			pStmt = con.prepareStatement(query);
			pStmt.setInt(1, vo.getEno());
			pStmt.setString(2, vo.getEname());
			pStmt.setString(3, vo.getJob());
			pStmt.setInt(4, vo.getManager());
			pStmt.setInt(5, vo.getSalary());
			pStmt.setInt(6, vo.getCommission());
			pStmt.setInt(7, vo.getDno());

			System.out.println("query = " + query);
			ret = pStmt.executeUpdate();
			System.out.println("DB Insert 결과 = " + ret);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				pStmt.close();
				con.close();
			} catch (Exception e) {

			}
		}
		return ret;
	}

	public EmployeeVO findEmp(int eno) {

		EmployeeVO vo = new EmployeeVO();
		try {
			con = dataFactory.getConnection();
			String query = "select * from employee where eno=?";
			pStmt = con.prepareStatement(query);
			pStmt.setInt(1, eno);
			System.out.println(query);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				vo.setEno(rs.getInt("eno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setManager(rs.getInt("manager"));
				vo.setHireDate(rs.getDate("hireDate"));
				vo.setSalary(rs.getInt("salary"));
				vo.setCommission(rs.getInt("commission"));
				vo.setDno(rs.getInt("dno"));
			}
			rs.close();
			pStmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int updateEmp(EmployeeVO vo) {
		int ret = 0;
		try {
			con = dataFactory.getConnection();
			System.out.println("수정할 정보 = " + vo.toString());
			String query = "update employee set ename=?, job=?, manager=?, salary=?, commission=?, dno=? where eno=?";
			System.out.println(query);
			pStmt = con.prepareStatement(query);
			pStmt.setString(1, vo.getEname());
			pStmt.setString(2, vo.getJob());
			pStmt.setInt(3, vo.getManager());
			pStmt.setInt(4, vo.getSalary());
			pStmt.setInt(5, vo.getCommission());
			pStmt.setInt(6, vo.getDno());
			pStmt.setInt(7, vo.getEno());
			
			System.out.println("query = " + query);
			
			ret = pStmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				pStmt.close();
				con.close();
			} catch (Exception e) {

			}
		}
		return ret;
	}

	public int deleteEmp(int eno) {
		int ret = 0;
		try {
			con = dataFactory.getConnection();
			String query = "delete from employee where eno=?";
			System.out.println(query);
			pStmt = con.prepareStatement(query);
			pStmt.setInt(1, eno);
			ret = pStmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				pStmt.close();
				con.close();
			} catch (Exception e) {

			}
		}
		return ret;
	}

	public boolean loginEmp(EmployeeVO vo) {
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			String query = "SELECT decode(count(*),1,'true','false') as result FROM EMPLOYEE where eno=? and ename=?";
	         pStmt = con.prepareStatement(query);
	         pStmt.setInt(1, vo.getEno());
	         pStmt.setString(2, vo.getEname());

	         System.out.println("query = " + query);
	         ResultSet rs = pStmt.executeQuery();
	         // 5)결과얻기
	         rs.next(); // 첫번째 결과로 이동..

	         result = Boolean.parseBoolean(rs.getString("result"));
	         System.out.println("DB 로그인 결과 = " + result);
	         rs.close();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			try {
				pStmt.close();
				con.close();
			} catch (Exception e) {

			}
		}
		return result;
	}

	public EmployeeVO selectOne(String eno) {
		EmployeeVO vo = new EmployeeVO();
		// TODO Auto-generated method stub
		try {
			con = dataFactory.getConnection();
			String query = "select * from employee where eno=?";
			pStmt = con.prepareStatement(query);
			pStmt.setString(1, eno);
			System.out.println(query);
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				vo.setEno(rs.getInt("eno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setManager(rs.getInt("manager"));
				vo.setHireDate(rs.getDate("hireDate"));
				vo.setSalary(rs.getInt("salary"));
				vo.setCommission(rs.getInt("commission"));
				vo.setDno(rs.getInt("dno"));
			}
			rs.close();
			pStmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

}