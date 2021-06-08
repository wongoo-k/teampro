package com.hk.board.daos;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.board.dtos.MemberDTO;

@Repository
public class MemberDaoImp implements MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDaoImp() {
		
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void memberJoinMethod(MemberDTO dto) {
		sqlSession.insert("member.join", dto);
	}

	public void GetKey(String user_id, String key) {
		// TODO Auto-generated method stub
		
	}

	public int alter_userKey(String user_id, String key) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int idCheck(String mem_id) {
		// TODO Auto-generated method stub
		int idc=sqlSession.selectOne("member.idCheck", mem_id);
		return idc;
	}

}
