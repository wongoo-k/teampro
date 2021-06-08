package com.wg.mem;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wg.mem.dtos.WgDto;
import com.wg.mem.service.IWgService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private IWgService wgService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("인덱스페이지 {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/memberlist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberlist(Locale locale, Model model) {
		logger.info("글목록 조회하기 {}.", locale);
		
		List<WgDto> list = wgService.getAllMember(); 
		model.addAttribute("list", list);
		
		return "memberlist";
	}
	
	@RequestMapping(value = "/joinmember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinmember(Locale locale, Model model) {
		logger.info("글쓰기 폼 호출 {}.", locale);		
		
		return "joinmember";
	}
	
	@RequestMapping(value = "/join.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String join(Locale locale, Model model, WgDto dto) {
		logger.info("회원 추가하기 {}.", locale);		
		boolean isS = wgService.joinMember(dto);
		if(isS) {
			return "redirect:memberlist.do"; // = response.sendRedirect("boardlist.do");
//			return "boardlist.do"; 하면 --> /WEB-INF/views/boardlist.do.jsp 로 요청됨 (servlet-context.xml 의 viewResolver 설정 참고)
		} else {
			model.addAttribute("msg", "회원추가 실패");
			return "error";
		}
	}
	
	@RequestMapping(value = "/detailmember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String detailmember(@RequestParam("id") String id, Locale locale, Model model) {
		logger.info("회원상세 조회하기 {}.", locale);
		
		WgDto dto = wgService.getMember(id);
		model.addAttribute("dto", dto);
		
		return "detailmember";
	}
	
	@RequestMapping(value = "/updateForm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateForm(String id, Locale locale, Model model) {
		logger.info("회원수정하기 폼이동 {}.", locale);
		
		WgDto dto = wgService.getMember(id); 
		model.addAttribute("dto", dto);
		
		return "updateForm";
	}
	
	@RequestMapping(value = "/update.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String update(WgDto dto, Locale locale, Model model) {
		logger.info("회원수정하기 {}.", locale);
		
		boolean isS = wgService.updateMember(dto);
		if(isS) {
			return "redirect:detailmember.do?id="+dto.getId();
		} else {
			model.addAttribute("msg", "회원수정 실패");
			return "error";
		}
		
	}
	
	@RequestMapping(value = "/delmember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String delmember(WgDto dto, Locale locale, Model model) {
		logger.info("회원삭제하기 {}.", locale);
		
		boolean isS = wgService.deleteMember(dto.getId());
		if(isS) {
			return "redirect:memberlist.do";
		} else {
			model.addAttribute("msg", "회원삭제 실패");
			return "error";
		}
		
	}
	
	@RequestMapping(value = "/muldel.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String muldel(String[] chk, Locale locale, Model model) {
		logger.info("회원여러개 삭제하기 {}.", locale);
		
		boolean isS = wgService.muldelMember(chk);
		if(isS) {
			return "redirect:memberlist.do";
		} else {
			model.addAttribute("msg", "회원여러개 삭제 실패");
			return "error";
		}
		
	}
	
}
