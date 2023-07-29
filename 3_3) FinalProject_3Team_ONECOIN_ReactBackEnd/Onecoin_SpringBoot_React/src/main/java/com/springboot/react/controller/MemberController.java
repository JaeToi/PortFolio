package com.springboot.react.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.react.impl.MemberService;
import com.springboot.react.model.MemberVO;

@CrossOrigin
@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService memberService;
	
	/**
	 * 로그인
	 * @param memberVO
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @throwsException
	 */
	@RequestMapping(value = "/loginAction.do")
	public @ResponseBody String loginActon(@ModelAttribute("memberVO")MemberVO memberVO, 
			HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model)
					throws Exception{
					String result = "N";
					
					try {
						MemberVO resultVO = memberService.selectMemberByIdByPw(memberVO);
						
						if(resultVO != null) {
							result = resultVO.getMemberName();
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return result;
	}
}

