package com.hk.board;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hk.board.daos.MailService;
import com.hk.board.daos.MemberDAO;
import com.hk.board.dtos.HkDto;
import com.hk.board.dtos.MemberDTO;
import com.hk.board.service.HkService;
import com.hk.board.service.MailSendService;
import com.hk.board.service.MemberService;
import com.hk.board.service.UserService;

/**
 * Handles requests for the application home page.
 * @param <kakao_restapi>
 */
@Controller
public class HomeController{
	
	private final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private MemberService memberService;
	 
    @Autowired
    private JavaMailSender mailSender;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/login.do", 
		       method = {RequestMethod.GET,RequestMethod.POST})
	public String login(Locale locale, Model model) {
	logger.info("로그인하기 {}.", locale);
	return "login";
}
	
	@RequestMapping(value = "/memberjoin.do", 
		       method = {RequestMethod.GET,RequestMethod.POST})
	public String memberjoin(Locale locale, Model model) {
	logger.info("회원가입하기 {}.", locale);
	return "memberjoin";
	}
	
	@RequestMapping(value = "/boardlist.do", 
		       method = {RequestMethod.GET,RequestMethod.POST})
	public String boardlist(Locale locale, Model model) {
	logger.info("게시판으로 이동하기 {}.", locale);
	
//	List<HkDto> list=HkService.getAllList();
//	model.addAttribute("list", list);
//	System.out.println("사이즈:"+list.size());
	return "boardlist";
}
	
	// 회원가입정보를 다 입력하고 회원가입 버튼을 누른다. 
		@RequestMapping(value = "/memberjoinpro.do", method = RequestMethod.POST)
		public ModelAndView memberJoinPro(MemberDTO dto) { 
			ModelAndView mav = new ModelAndView(); 
			memberService.memberJoinProcess(dto); 
			mav.setViewName("memberjoinsuc"); 
			return mav; 
		}// end memberJoinPro()

		@RequestMapping(value = "/food.do", 
			       method = {RequestMethod.GET,RequestMethod.POST})
		public String food(Locale locale, Model model) {
		logger.info("음식카테고리 {}.", locale);
		return "food";
	}
//		 @Autowired
//		    private MemberService memberService2;
//		    @Autowired
//		    private MailSendService mss;
//
//
//		    @RequestMapping("/signUp")
//		     public void signUp(@ModelAttribute MemberDTO memberDTO){
//		        // DB에 기본정보 insert
//		        memberService.signUp(memberDTO);
//
//		        //임의의 authKey 생성 & 이메일 발송
//		        String authKey = mss.sendAuthMail(memberDTO.getMem_email());
//		        memberDTO.setAuthKey(authKey);
//
//		        Map<String, String> map = new HashMap<String, String>();
//		        map.put("email", memberDTO.getMem_email());
//		        map.put("authKey", memberDTO.getAuthKey());
//		        System.out.println(map);
//
//		      //DB에 authKey 업데이트
//		      memberService.updateAuthKey(map);
//
//		  	}
//		    @GetMapping("/signUpConfirm")
//		    public ModelAndView signUpConfirm(@RequestParam Map<String, String> map, ModelAndView mav){
//		    	//email, authKey 가 일치할경우 authStatus 업데이트
//		    	memberService.updateAuthStatus(map);
//		    	
//		    	mav.addObject("display", "/view/member/signUp_confirm.jsp");
//		    	mav.setViewName("/view/index");
//		    	return mav;
//		    }
//		    private UserService userService;
//		    private MailService mailService;
//		 
//		    public void setUserService(UserService userService) {
//		        this.userService = userService;
//		    }
//		 
//		    public void setMailService(MailService mailService) {
//		        this.mailService = mailService;
//		    }
//		 
		    /* 이메일 인증 */
		    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
		    @ResponseBody
		    public String mailCheckGET(String mem_email) throws Exception{
		        
		        /* 뷰(View)로부터 넘어온 데이터 확인 */
		        logger.info("이메일 데이터 전송 확인");
		        logger.info("이메일 : " + mem_email);
		                

		        /* 인증번호(난수) 생성 */
		        Random random = new Random();
		        int checkNum = random.nextInt(888888) + 111111;
		        logger.info("인증번호 " + checkNum);
		        

		        /* 이메일 보내기 */
		        String setFrom = "yogihoxytest1@gmail.com";
		        String toMail = mem_email;
		        String title = "YOGIHOXY 회원가입 인증 이메일 입니다.";
		        String content = 
		                "홈페이지를 방문해주셔서 감사합니다." +
		                "<br><br>" + 
		                "인증 번호는 " + checkNum + "입니다." + 
		                "<br>" + 
		                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		        try {
		            
		            MimeMessage message = mailSender.createMimeMessage();
		            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		            helper.setFrom(setFrom);
		            helper.setTo(toMail);
		            helper.setSubject(title);
		            helper.setText(content,true);
		            mailSender.send(message);
		            
		        }catch(Exception e) {
		            e.printStackTrace();
		        }
		        String num = Integer.toString(checkNum);
		        
		        return num;
		    }
			// 아이디 중복 검사
			@RequestMapping(value = "memberIdChk", method = RequestMethod.POST)
			@ResponseBody
			public String memberIdChkPOST(String mem_id) throws Exception{
				
				logger.info("memberIdChk() 진입");
				
				int result = memberService.idCheck(mem_id);
				
				logger.info("결과값 = " + result);
				
				if(result != 0) {
					
					return "fail";	// 중복 아이디가 존재
					
				} else {
					
					return "success";	// 중복 아이디 x
					
				}	
			} // memberIdChkPOST() 종료	
			
			@RequestMapping(value ="/categories.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String categories(Locale locale, Model model) {
			logger.info("카테고리 {}.", locale);
			return "categories";
		}
			
			@RequestMapping(value ="/foodcat.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String foodcat(Locale locale, Model model) {
			logger.info("음식 카테고리 {}.", locale);
			return "foodcat";
		}	
			@RequestMapping(value ="/dairycat.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String dairy(Locale locale, Model model) {
			logger.info("유제품 카테고리 {}.", locale);
			return "dairycat";
		}	
			@RequestMapping(value ="/snackcat.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String snack(Locale locale, Model model) {
			logger.info("스낵 카테고리 {}.", locale);
			return "snackcat";
		}	
			@RequestMapping(value ="/topcat.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String top(Locale locale, Model model) {
			logger.info("상의 카테고리 {}.", locale);
			return "topcat";
		}	
			@RequestMapping(value ="/toycat.do",
				       method = {RequestMethod.GET,RequestMethod.POST})
			public String toy(Locale locale, Model model) {
			logger.info("장난감 카테고리 {}.", locale);
			return "toycat";
		}	
			
}
