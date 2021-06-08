package chap15;

import java.util.List;

public class ListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 기능위주 Class new
		BoardDao dao = new BoardDao();
		
		// dao에 Board를 생성하도록 샘플 코드 추가
		dao.addBoard();
		
		// 저장위주 Class new
		List<Board> list = dao.getBoardList();
		
		for(Board board : list) {
//			System.out.println(board.getTitle() + "-" + board.getContent());
			System.out.println(board.toString());
		}
	}
}
