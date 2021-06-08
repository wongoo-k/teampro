package com.wg.mem.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.wg.mem.dtos.WgDto;

@Repository
public class WgDao implements IWgDao {
	
	private String namespace="com.wg.mem.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<WgDto> getAllMember() {
		return sqlSession.selectList(namespace+"getAllMember");
	}

	@Override
	public boolean joinMember(WgDto dto) {
		int count = 0;
		count = sqlSession.insert(namespace+"joinMember", dto);
		return count > 0 ? true:false;
	}

	@Override
	public WgDto getMember(String id) {
		return sqlSession.selectOne(namespace+"getMember", id);
	}

	@Override
	public boolean updateMember(WgDto dto) {
		int count = 0;
		count = sqlSession.update(namespace+"updateMember", dto);
		return count > 0 ? true:false;
	}

	@Override
	public boolean deleteMember(String id) {
		int count = 0;
		count = sqlSession.delete(namespace+"deleteMember", id);
		return count > 0 ? true:false;
	}

	@Override
	public boolean muldelMember(String[] chks) {
		int count = 0;
		Map<String, String[]> map = new HashMap<>();
		map.put("chks", chks);
		count = sqlSession.delete(namespace+"muldelMember", map);
		return count > 0 ? true:false;
	}

}
