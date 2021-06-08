package com.wg.mem.daos;

import java.util.List;

import com.wg.mem.dtos.WgDto;

public interface IWgDao {
		public List<WgDto> getAllMember();
		public boolean joinMember(WgDto dto);
		public WgDto getMember(String id);
		public boolean updateMember(WgDto dto);
		public boolean deleteMember(String id);
		public boolean muldelMember(String[] chks);
}
