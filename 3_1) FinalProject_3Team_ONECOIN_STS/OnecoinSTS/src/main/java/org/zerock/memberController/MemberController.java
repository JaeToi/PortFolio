package org.zerock.memberController;

import java.lang.ProcessBuilder.Redirect;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.MemberDTO;
import org.zerock.service.MemberService;


import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
		
		private final MemberService memberService;
		private final BCryptPasswordEncoder pwEncoder;

		
	
		@GetMapping("/signup")
		public String Signup() {
			return "/member/signup";
		}
		
		@PostMapping("/memberIdChk")
		@ResponseBody
		public String memberIdChkP(String memberId) {
			
			int result = memberService.idCheck(memberId);
			
			if (result != 0) {
				return "fail";
			} else {
				return "success";
			}
		}
		
		
		@PostMapping("/memberEmailChk")
		@ResponseBody
		public String memberEmailChkP(String memberEmail) {
			
			int result2 = memberService.emailCheck(memberEmail);
			
			if (result2 != 0) {
				return "fail";
			} else {
				return "success";
			}
		}
		
		
		
		
		

//		// signup.jsp에있는 form데이터를 받는 controller
		// 이건 비밀번호 BCryptPasswordEncoder 이용함
//		@PostMapping("/signup")
//		public String Signup(@ModelAttribute MemberDTO dto, Model model) {
//			
//			String rawPw = "";		// 인코딩 전 비밀번호
//			String encodePw = "";	// 인코딩 후 비밀번호
//			
//			rawPw = dto.getMemberPassword(); // 인코딩 전 비밀번호를 가져옴
//			encodePw = pwEncoder.encode(rawPw); // 가져온 비밀번호(인코딩 전)을 인코딩 시킴
//			dto.setMemberPassword(encodePw);
//			
//			int saveResult = memberService.save(dto);
//			
//			if (saveResult > 0) {
//				return "redirect:/"; 
//			} else {
//				System.out.println("오류");
//				return "/";
//			}
//			
//		}
		
		// signup.jsp에있는 form데이터를 받는 controller
		@PostMapping("/signup")
		public String Signup(@ModelAttribute MemberDTO dto, Model model) {
		
			int saveResult = memberService.save(dto);
			
			if (saveResult > 0) {
				return "redirect:/"; 
			} else {
				System.out.println("오류");
				return "/";
			}
			
		}
		
		
		
		// 메일인증체크 메서드
		@GetMapping("/mailCheck")
		@ResponseBody
		public String mailCheck(String email) {
			return memberService.joinEmail(email);
		}
		
		
		
		
		// 로그인 페이지로 이동
		@GetMapping("/login")
		public String loginPage() {
			return "/member/login";
		}
		
		
		
	
		// 로그인 을 하면 post방식으로 데이터를 보냄 (검증)
		@PostMapping("/login")
		public String login(@ModelAttribute MemberDTO dto, Long memberNum,  Model model, HttpServletRequest request, RedirectAttributes rttr) {

			
			// 비밀번호 인코딩 하기전 코드	
			
			HttpSession session = request.getSession();
			MemberDTO lvo = memberService.login(dto);
	
			if(lvo == null) {
				int result = 0;
				rttr.addFlashAttribute("result", result);
				return "redirect:/member/login";
			} 

			
			session.setAttribute("member", lvo);
		
			return "redirect:/";
			
		}
		
		/*
		
		// 비밀번호 인코딩 한후 코드 
		@PostMapping("/login")
		public String login(@ModelAttribute MemberDTO dto, Long memberNum,  Model model, HttpServletRequest request, RedirectAttributes rttr) {
		HttpSession session = request.getSession();
		String rawPw = ""; 	// 인코딩 하기 전 코드
		String enCodePw = "";	// 인코딩 한후 코드
		
		MemberDTO lvo = memberService.login(dto);  // 제출한 아이디가 JDBC안에 있는지 확인
		
		if(lvo != null) {	// 아이디 존재 o
			
			rawPw = dto.getMemberPassword(); // 클라이언트가 제출한 비밀번호
			enCodePw = lvo.getMemberPassword(); // JDBC에 저장한 인코딩된 비밀번호
			
			// pwEncoder의 내부함수중 matches(첫번째매개변수,두번째매개변수)가 true를 return 하는지 조건문 작성 
			if (true == pwEncoder.matches(rawPw, enCodePw)) {
				
				lvo.setMemberPassword(""); // 인코딩된 비밀번호 정보를 지움
				session.setAttribute("member", lvo); // session에 사용자의 정보를 저장
				return "redirect:/";
				
				
			} else { 		// 아이디 존재 x 
				rttr.addFlashAttribute("result", 0);
				return "redirect:/member/login";
			}
			
		} else {			// 아이디 존재 x 
			rttr.addFlashAttribute("result", 0);
			return "redirect:/member/login";
		}
		*/
		
		
		
		
//		// 로그인을 하면 페이지이동 ! ->여기선 메인으로 
//		@GetMapping("/login")
//		public String memberList(Model model, Long memberNum) {
//			List<MemberDTO> memberList = memberService.memberList();
//			model.addAttribute("memberList2", memberList);
//			return "redirect:/";
//		}
		
		// 메인페이지 로그아웃
		@GetMapping("/logout.do")
		public String logoutMainGET(HttpServletRequest request) {
			HttpSession session = request.getSession();
			
			// "invalidate()" 메서드의 경우 세션 전체를 무효화하는 메서드
			session.invalidate();
			return "redirect:/";  
		}
		
		
		
		// 아이디 및 비밀번호 찾기 페이지 이동 
		@GetMapping("/userSeach")
		public String search_id() {
			return "/member/userSeach";
		}
		
		// 아이디 찾기 
		@PostMapping("/userSeach")
		@ResponseBody
		public String search_idP(@RequestParam("email") String memberEmail, Model model) {
			
			String result = memberService.findId(memberEmail);
			
			return result;
		}
		
		// 비밀번호 찾기
		
		 
	
		
	}




















