package com.wg.mem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wg.mem.daos.WgDao;
import com.wg.mem.daos.IWgDao;
import com.wg.mem.dtos.WgDto;

@Service
public class WgService implements IWgService {

	@Autowired
	private IWgDao hkDao;
	
	@Override
	public List<WgDto> getAllMember() {
		return hkDao.getAllMember();
	}

	@Override
	public boolean joinMember(WgDto dto) {
		return hkDao.joinMember(dto);
	}

	@Override
	public WgDto getMember(String id) {
		return hkDao.getMember(id);
	}

	@Override
	public boolean updateMember(WgDto dto) {
		return hkDao.updateMember(dto);
	}

	@Override
	public boolean deleteMember(String id) {
		return hkDao.deleteMember(id);
	}

	@Override
	public boolean muldelMember(String[] chks) {
		return hkDao.muldelMember(chks);
	}

}
