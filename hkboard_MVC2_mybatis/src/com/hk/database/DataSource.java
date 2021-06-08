package com.hk.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataSource {
	
	public DataSource() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1단계 : 드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("1단계 : 드라이버 로딩 실패");
		}
	}
	
	public Connection getConnerction() throws SQLException {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="STUDY";
		String password="STUDY";
		
		Connection conn = DriverManager.getConnection(url, user, password);		
		return conn;
	}
	
	public void close(ResultSet rs, PreparedStatement psmt, Connection conn) {
		
		try {
			if (rs != null) {
				rs.close();
			}
			
			if (psmt != null) {
				psmt.close();
			}
			
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
