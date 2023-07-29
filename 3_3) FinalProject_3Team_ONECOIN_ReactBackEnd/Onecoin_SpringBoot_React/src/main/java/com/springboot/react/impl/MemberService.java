package com.springboot.react.impl;

import com.springboot.react.model.MemberVO;

public interface MemberService {

//	아이디, 패스워드로 회원 조회 처리
//	@param memberVo
//	@throws Exception
	
	MemberVO selectMemberByIdByPw(MemberVO memberVO) throws Exception;
}
