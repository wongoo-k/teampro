package com.hk.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hk.database.DataSource;
import com.hk.dtos.HkDto;

public class HkDao extends DataSource {

	public HkDao() {
		super();
	}
	
	//1. 글목록 조회하기: select문 실행 --> 결과 리스트(여러개의 row)
	public List<HkDto> getAllList() {
		List<HkDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		String sql = " SELECT SEQ, ID, NAME, TITLE, CONTENT, REGDATE "
				   + " FROM HKBOARD ORDER BY REGDATE DESC ";
		
//		StringBuffer sb =  new StringBuffer();
//		sb.append(" SELECT SEQ, ID, NAME, TITLE, CONTENT, REGDATE ");
//		sb.append(" FROM HKBOARD ORDER BY REGDATE DESC ");
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				HkDto dto = new HkDto();
				dto.setSeq(rs.getInt(1));
				dto.setId(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setTitle(rs.getString(4));
				dto.setContent(rs.getString(5));
				dto.setRegdate(rs.getDate(6));
				list.add(dto);
				System.out.println("dto = " + dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, psmt, conn);
		}
		return list;
	}
	//2. 글추가하기
	// insert문 실행 --> 추가된 행의 개수만큼 숫자 반환 --> 0보다 크면 true
	public boolean insertBoard(HkDto dto) { 
		int count = 0;
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		String sql = " INSERT INTO HKBOARD "
				   + " VALUES (HKBOARD_SEQ.NEXTVAL,?,?,?,?,SYSDATE) ";
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getTitle());
			psmt.setString(4, dto.getContent());
			
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(null, psmt, conn);
		}
		
		return count > 0 ? true : false;
	}
	//3. 글상세보기
	public HkDto getBoard(int seq) {
		
		HkDto dto = new HkDto();
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		String sql = " SELECT SEQ, ID, NAME, TITLE, CONTENT, REGDATE "
				+ " FROM HKBOARD WHERE SEQ = ? ";
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			rs = psmt.executeQuery();
			while(rs.next()) {
				dto.setSeq(rs.getInt(1));
				dto.setId(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setTitle(rs.getString(4));
				dto.setContent(rs.getString(5));
				dto.setRegdate(rs.getDate(6));
				System.out.println("dto = " + dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, psmt, conn);
		}
		return dto;
	}
	//4. 글수정하기
	public boolean updateBoard(HkDto dto) { 
		int count = 0;
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		String sql = " UPDATE HKBOARD SET "
				   + " TITLE = ?, CONTENT = ?, REGDATE=SYSDATE"
				   + " WHERE SEQ = ? ";
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setInt(3, dto.getSeq());
			
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(null, psmt, conn);
		}
		
		return count > 0 ? true : false;
	}
	//5. 글삭제하기
	public boolean deleteBoard(int seq) { 
		int count = 0;
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		String sql = " DELETE FROM HKBOARD WHERE SEQ = ? ";
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(null, psmt, conn);
		}
		
		return count > 0 ? true : false;
	}
	//6. 여러글 삭제하기 (MyBatis 할때 다시 수정)
	public boolean muldelBoard(int seq) { 
		int count = 0;
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		String sql = " DELETE FROM HKBOARD WHERE SEQ = ? ";
		
		try {
			conn = getConnerction();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			
			count = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(null, psmt, conn);
		}
		
		return count > 0 ? true : false;
	}
}
