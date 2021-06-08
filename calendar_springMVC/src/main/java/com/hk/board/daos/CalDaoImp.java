package com.hk.board.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.board.dtos.CalDto;

@Repository
public class CalDaoImp implements ICalDao {
	
	private String namespace = "com.hk.board.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 일정추가하기: insert문, 파라미터: id,title,content,mdate 4개의 값을 받는다
	public boolean insertCal(CalDto dto) {
		int count = sqlSession.insert(namespace+"insertCal", dto);
		return count > 0 ? true : false;
	}
	
	// 일정목록조회하기: select문, 결과:List, 파라미터: id, yyyyMMdd
	public List<CalDto> calBoardList (String id, String yyyyMMdd) {
		// mapper.xml에 전달할 파라미터가 2개 이상이면 Map에 담아서 전달한다.
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("yyyyMMdd", yyyyMMdd);
		List<CalDto> list = sqlSession.selectList(namespace+"calBoardList", map);
		return list;
	}
	
	// 일정상세보기: select문, 결과: CalDto, 파라미터: seq
	public CalDto calDetail (int seq) {
		CalDto dto = sqlSession.selectOne(namespace+"calDetail", seq);
		return dto;
	}
	
	// 일정수정하기
	public boolean calUpdate(CalDto dto) {
		int count = sqlSession.update(namespace+"calUpdate", dto);
		return count > 0 ? true : false;	
	}
	
	// 일정삭제하기 (여러개/한개 삭제하기)
	public boolean calMuldel(String[] seq) {
		Map<String, String[]> map = new HashMap<>();
		map.put("seqs", seq);
		int count = sqlSession.delete(namespace+"calMuldel", map);
		return count > 0 ? true : false;
	}
	
	// 일정의 갯수조회하기: select문, 파라미터: id, yyyyMMdd
	public int calCount(String id, String yyyyMMdd) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("yyyyMMdd", yyyyMMdd);
		int count = sqlSession.selectOne(namespace+"calCount", map);
		return count;	
	}
	
	// 달력에 존재하는 일정조회하기(일일별 최대 3개씩 가져오기)
	public List<CalDto> calViewList(String id, String yyyyMM) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("yyyyMM", yyyyMM);
		return sqlSession.selectList(namespace+"calViewList", map);
	}
	
}





