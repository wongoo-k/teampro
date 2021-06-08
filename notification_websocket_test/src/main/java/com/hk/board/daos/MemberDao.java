package com.hk.board.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.board.dtos.MemberDto;



@Repository
public class MemberDao {
	private String namespace="com.hk.board.";
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public MemberDto getBoard(int pord_no) {
		return sqlSession.selectOne(namespace+"getBoard", pord_no);
	}
	
	public boolean updateBoard(MemberDto dto) {
		int count = 0;
		count = sqlSession.update(namespace+"updateBoard", dto);
		return count > 0 ? true:false;
	}

	public static List<MemberDto> getBoard() {
		// TODO Auto-generated method stub
		return null;
	}
}
