package com.hk.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.hk.database.DataSource;
import com.hk.dtos.HkDto;
import com.hk.sql.SqlMapConfig;

public class HkDao extends SqlMapConfig {
	
	private String nameSpace = "com.hk.board.";
	
	public HkDao() {
		super();
	}
	
	//1. 글목록 조회하기: select문 실행 --> 결과 리스트(여러개의 row)
	public List<HkDto> getAllList() {
		List<HkDto> list = new ArrayList<>();
		SqlSession sqlSession = null;
		try {
			// SqlSessionFactory 객체를 구함
			SqlSessionFactory sqlSessionFactory = getSqlSessionFactory();			
			// sqlSession 객체를 구함
			// openSession(true) : autocommit을 설정함
			// openSession(false) : autocommit을 설정 해제
			sqlSession = sqlSessionFactory.openSession(true); 
			// selectList(쿼리id) 실행하면 결과를 List로 반환한다.
			list = sqlSession.selectList(nameSpace+"getAllList");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	//2. 글추가하기
	// insert문 실행 --> 추가된 행의 개수만큼 숫자 반환 --> 0보다 크면 true
	public boolean insertBoard(HkDto dto) { 
		int count = 0;
		SqlSession sqlSession = null;
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.insert(nameSpace+"insertBoard", dto);
			//--- MyBatis에서는 map.xml에 파라미터를 전달할때 기본적으로 Map에 담아서 전달한다.
//			Map<String, String> map = new HashMap<>();
//			map.put("id", id);
//			map.put("name", name);
//			sqlSession.insert(nameSpace+"insertBoard", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}	
		return count > 0 ? true : false;
	}
	//3. 글상세보기
	public HkDto getBoard(int seq) {
		HkDto dto = new HkDto();
		SqlSession sqlSession = null;
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			dto = sqlSession.selectOne(nameSpace+"getBoard", seq); //selectOne : 한 행만 선택
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return dto;
	}
	//4. 글수정하기
	public boolean updateBoard(HkDto dto) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.update(nameSpace+"updateBoard", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}
	//5. 글삭제하기
	public boolean deleteBoard(int seq) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.delete(nameSpace+"deleteBoard", seq);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}
	//6. 여러글 삭제하기 (MyBatis 할때 다시 수정)
	public boolean muldelBoard(String[] chks) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {			
			Map<String, String[]> map = new HashMap<>();
			map.put("chks", chks);
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.delete(nameSpace+"muldelBoard", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}

}
