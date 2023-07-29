package org.zerock.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.dto.MemberDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberRepository {
	
	private final SqlSession sql;
	
	// 회원가입
	public int save(MemberDTO dto) {
		return sql.insert("Member.save", dto);
	}

	// 회원가입할때 아이디가 DB에 있는지 쳌
	public int idCheck(String memberId) {
		return sql.selectOne("Member.idCheck", memberId);
	}
	
	// 회원가입할때 DB에 이메일이 있는지 쳌
	public int emailCheck(String memberEmail) {
		return sql.selectOne("Member.emailCheck", memberEmail);
	}

	// 로그인 
	public MemberDTO login(MemberDTO dto) {
		return sql.selectOne("Member.login", dto);
	}

	// 멤버 리스트 가져오기
	public List<MemberDTO> memberList() {
		return sql.selectList("Member.memberList");
	}
	
	
	// 아이디찾기
	public String findId(String memberEmail) {
		return sql.selectOne("Member.findId", memberEmail);
	}
	
	

}
