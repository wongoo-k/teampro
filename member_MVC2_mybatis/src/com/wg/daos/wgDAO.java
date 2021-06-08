package com.wg.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wg.dtos.wgDTO;
import com.wg.sql.SqlMapConfig;

public class wgDAO extends SqlMapConfig {
	
	private String nameSpace = "com.wg.member.";
	
	public wgDAO() {
		super();
	}
	
	//1. 회원조회
	public List<wgDTO> getAllMember() {
		List<wgDTO> list = new ArrayList<>();
		SqlSession sqlSession = null;
		try {
			SqlSessionFactory sqlSessionFactory = getSqlSessionFactory();			
			sqlSession = sqlSessionFactory.openSession(true); 
			list = sqlSession.selectList(nameSpace+"getAllMember");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	//2. 회원추가하기
	public boolean joinMember(wgDTO dto) { 
		int count = 0;
		SqlSession sqlSession = null;
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.insert(nameSpace+"joinMember", dto);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}	
		return count > 0 ? true : false;
	}
	//3. 회원정보 보기
	public wgDTO getMember(String id) {
		wgDTO dto = new wgDTO();
		SqlSession sqlSession = null;
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			dto = sqlSession.selectOne(nameSpace+"getMember", id); //selectOne : 한 행만 선택
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return dto;
	}
	//4. 회원 수정하기
	public boolean updateMember(wgDTO dto) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.update(nameSpace+"updateMember", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}
	//5. 회원 삭제하기
	public boolean deleteMember(String id) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.delete(nameSpace+"deleteMember", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}
	//6. 여러회원 삭제하기
	public boolean muldelMember(String[] chks) { 
		int count = 0;
		SqlSession sqlSession = null;
		
		try {			
			Map<String, String[]> map = new HashMap<>();
			map.put("chks", chks);
			sqlSession = getSqlSessionFactory().openSession(true);
			count = sqlSession.delete(nameSpace+"muldelMember", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return count > 0 ? true : false;
	}

}
