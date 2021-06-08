package com.hk.board.daos;

import com.hk.board.dtos.MemberDTO;

public interface MemberDAO {
	public void memberJoinMethod(MemberDTO dto);
	
	// 아이디 중복 검사
	public int idCheck(String mem_id); 
		// TODO Auto-generated method stub
	
}