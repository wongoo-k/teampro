package com.hk.board.service;

import com.hk.board.daos.MemberDAO;
import com.hk.board.dtos.MemberDTO;

import java.util.Map;

import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImp implements MemberService {
	@Autowired
	private MemberDAO dao;
	
	public void setDao(MemberDAO dao) {
		this.dao = dao;
		
	}
	
	@Override
	public void memberJoinProcess(MemberDTO dto) {
		dao.memberJoinMethod(dto);
	}

	@Override
	public void updateAuthStatus(Map<String, String> map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void signUp(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAuthKey(Map<String, String> map) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int idCheck(String mem_id) throws Exception {
		
		return dao.idCheck(mem_id);
	}
	
	
}
