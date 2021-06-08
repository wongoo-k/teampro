package com.hk.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.board.daos.MemberDao;
import com.hk.board.dtos.HkDto;
import com.hk.board.dtos.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "index";
	}
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String home(Locale locale, Model model,MemberDto dto,HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		HttpSession session = request.getSession();
		session.setAttribute("memDTO", dto);
		
		List<MemberDto> list = MemberDao.getBoard(); 
		model.addAttribute("list", list);
		
		return "home";
	}
	
}
