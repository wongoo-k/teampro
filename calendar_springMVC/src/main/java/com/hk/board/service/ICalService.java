package com.hk.board.service;

import java.util.List;

import com.hk.board.dtos.CalDto;

public interface ICalService {

public boolean insertCal(CalDto dto);
	
	public List<CalDto> calBoardList (String id, String yyyyMMdd);
	
	public CalDto calDetail (int seq);
	
	public boolean calUpdate(CalDto dto);
	
	public boolean calMuldel(String[] seq);
	
	public int calCount(String id, String yyyyMMdd);
	
	public List<CalDto> calViewList(String id, String yyyyMM);
}
