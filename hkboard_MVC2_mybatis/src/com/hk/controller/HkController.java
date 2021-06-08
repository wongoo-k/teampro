package com.hk.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hk.daos.HkDao;
import com.hk.dtos.HkDto;

@WebServlet("/HkController.do")
public class HkController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String command = request.getParameter("command");		
		HkDao dao = new HkDao();
		
		if (command.equals("boardlist")) { //글목록조회요청
			List<HkDto> list = dao.getAllList();
			request.setAttribute("list", list);
			//request.getRequestDispatcher("boardlist.jsp").forward(request, response); 
			dispatch("boardlist.jsp", request, response);
			
		} else if (command.equals("insertboard")) { //글쓰기폼 요청
			response.sendRedirect("insertboard.jsp");
			
		} else if (command.equals("insert")) {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			boolean isS = dao.insertBoard(new HkDto(id, name, title, content)); //dto 에서 원하는 객체만 생성하여 불러옴
			
			if (isS) {
				response.sendRedirect("HkController.do?command=boardlist");
				//dispatch("HkController.do?command=boardlist", request, response); //forward로 보내서 새로고침을 하면 그 전 정보를 그대로 가져와 중복이 됨.
			} else {
				request.setAttribute("msg", "글 추가를 실패했습니다.");
				dispatch("error.jsp", request, response);
			}
			
		} else if (command.equals("detailboard")) {
//			int seq = Integer.parseInt(request.getParameter("seq")); //오류에 대한 처리가 힘듦
			
			int seq = 0;
			String pseq = request.getParameter("seq");
			if (pseq == null) {
				response.sendRedirect("error.jsp");
			} else {
				seq = Integer.parseInt(pseq);
				HkDto dto = dao.getBoard(seq); // DB에서 글하나에 대한 정보 가져오기
				request.setAttribute("dto", dto); // 정보를 request에 저장하기
				dispatch("detailboard.jsp", request, response); // 이동하기
			}
			
		} else if (command.equals("delboard")) {
			int seq = Integer.parseInt(request.getParameter("seq"));
			boolean isS = dao.deleteBoard(seq);
			if(isS) {
				response.sendRedirect("HkController.do?command=boardlist");
			} else {
				request.setAttribute("msg", "글삭제 실패");
				dispatch("error.jsp", request, response);
			}
			
		} else if (command.equals("updateForm")) {
			int seq = Integer.parseInt(request.getParameter("seq"));
			HkDto dto = dao.getBoard(seq);
			request.setAttribute("dto", dto);
			dispatch("updateForm.jsp", request, response);
			
		} else if (command.equals("update")) {
			int seq = Integer.parseInt(request.getParameter("seq"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			boolean isS = dao.updateBoard(new HkDto(seq, null, null, title, content, null));
			
			if (isS) {
//				response.sendRedirect("HkController.do?command=detailboard&seq="+seq);
				jsForward("HkController.do?command=detailboard&seq="+seq, "수정되었습니다.", response);
			} else {
				request.setAttribute("msg", "글수정 실패");
				dispatch("error.jsp", request, response);
			}
		} else if (command.equals("muldel")) {
			// 동일한 name 값으로 여러 value값을 전달할 경우 배열로 받으면 된다.getParameterValues("name")
			String[] chks = request.getParameterValues("chk");
			boolean isS = dao.muldelBoard(chks);
			if (isS) {
				jsForward("HkController.do?command=boardlist", "삭제되었습니다.", response);
			} else {
				request.setAttribute("msg", "글삭제 실패");
				dispatch("error.jsp", request, response);
			}
		}
	}
	//forward기능을 메서드로 구현
	public void dispatch(String url ,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher(url).forward(request, response); 

	}
	//PrintWriter를 이용한 javascript 출력기능을 메서드로 구현
	public void jsForward(String url, String msg, HttpServletResponse response) throws IOException {
		PrintWriter pw = response.getWriter();
		pw.print("<script type='text/javascript'> "
				   + "alert('"+msg+"');"
				   + "location.href='"+url+"'; "
				   + "</script>");
	}
	
}
