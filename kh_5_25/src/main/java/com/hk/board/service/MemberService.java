package com.hk.board.service;

import java.io.IOException; 
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;


import com.hk.board.dtos.MemberDTO;

public interface MemberService {
	public void memberJoinProcess(MemberDTO dto);

	public void updateAuthStatus(Map<String, String> map);

	public void signUp(MemberDTO memberDTO);

	public void updateAuthKey(Map<String, String> map);
	
	// 아이디 중복 검사
	public int idCheck(String mem_id) throws Exception;
}
