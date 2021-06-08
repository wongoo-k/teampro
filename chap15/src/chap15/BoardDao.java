package chap15;
// 기능위주로 하는 Class
import java.util.ArrayList;
import java.util.List;

public class BoardDao {
	// 필드
	List<Board> list = new ArrayList<Board>();
	
	// 리턴타입 메소드명(파라메터) { ... }
	
	List<Board> getBoardList() {
		return this.list;		
	}	
	
	void addBoard() {
		// Board Class 를 새로 만들어서 게시글 하나 추가
		// board에 저장해 두고.. 나중에 getBoardList 에서
		// 호출하면 return;
		
		list.add(new Board("제목1","본문1","작성자1"));
		list.add(new Board("제목2","본문2","작성자2"));
	}
}
