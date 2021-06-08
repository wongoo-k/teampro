package com.wg.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wg.daos.wgDAO;
import com.wg.dtos.wgDTO;

@WebServlet("/WgController.do")
public class wgController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String command = request.getParameter("command");		
		wgDAO dao = new wgDAO();
		
		if (command.equals("memberlist")) { 
			List<wgDTO> list = dao.getAllMember();
			request.setAttribute("list", list);
			dispatch("memberlist.jsp", request, response);
			
		} else if (command.equals("joinmember")) { //글쓰기폼 요청
			response.sendRedirect("joinmember.jsp");
			
		} else if (command.equals("join")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			boolean isS = dao.joinMember(new wgDTO(id, pwd, name, email, null)); //dto 에서 원하는 객체만 생성하여 불러옴
			
			if (isS) {
				response.sendRedirect("WgController.do?command=memberlist");
			} else {
				request.setAttribute("msg", "회원 추가를 실패했습니다.");
				dispatch("error.jsp", request, response);
			}
			
		} else if (command.equals("detailmember")) {			
			String id = "";
			String pid = request.getParameter("id");
			if (pid == null) {
				response.sendRedirect("error.jsp");
			} else {
				id = (String)pid;
				wgDTO dto = dao.getMember(id); // DB에서 글하나에 대한 정보 가져오기
				request.setAttribute("dto", dto); // 정보를 request에 저장하기
				dispatch("detailmember.jsp", request, response); // 이동하기
			}
			
		} else if (command.equals("delmember")) {
			String id = request.getParameter("id");
			boolean isS = dao.deleteMember(id);
			if(isS) {
				response.sendRedirect("WgController.do?command=memberlist");
			} else {
				request.setAttribute("msg", "회원삭제 실패");
				dispatch("error.jsp", request, response);
			}
			
		} else if (command.equals("updateMember")) {
			String id = request.getParameter("id");
			wgDTO dto = dao.getMember(id);
			request.setAttribute("dto", dto);
			dispatch("updateForm.jsp", request, response);
			
		} else if (command.equals("update")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			boolean isS = dao.updateMember(new wgDTO(id, pwd, name, email));
			
			if (isS) {
				jsForward("WgController.do?command=detailmember&id="+id, "수정되었습니다.", response);
			} else {
				request.setAttribute("msg", "회원수정 실패");
				dispatch("error.jsp", request, response);
			}
		} else if (command.equals("muldel")) {
			String[] chks = request.getParameterValues("chk");
			boolean isS = dao.muldelMember(chks);
			if (isS) {
				jsForward("WgController.do?command=memberlist", "삭제되었습니다.", response);
			} else {
				request.setAttribute("msg", "회원삭제 실패");
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
