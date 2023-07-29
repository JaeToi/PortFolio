package org.zerock.service;

import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jdbc.support.KeyHolder;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.zerock.dto.MemberDTO;
import org.zerock.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	public final MemberRepository memberRepository;
	private final JavaMailSender mailSender;
	private int authNumber;
	
	public int save(MemberDTO dto) {
		return memberRepository.save(dto); 
	}


	public MemberDTO login(MemberDTO dto) {
		return memberRepository.login(dto);
	}
	


	public int idCheck(String memberId) {
		return memberRepository.idCheck(memberId);
	}
	
	public int emailCheck(String memberEmail) {
		return memberRepository.emailCheck(memberEmail);
	}


	public List<MemberDTO> memberList() {
		return memberRepository.memberList();
	}
	
	
	
	
	// ★★ 회원가입시 메일전송 시작 ★★
	
	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("인증번호 : " + checkNum);
		authNumber = checkNum;
	}
	
	
	//이메일 보낼 양식! 
	public String joinEmail(String email) {
		makeRandomNumber();
		String setFrom = ".com"; // email-config에 설정한 자신의 이메일 주소를 입력 
		String toMail = email;
		String title = "회원 가입 인증 이메일 입니다."; // 이메일 제목 
		String content = 
				"안녕하세요 원코인 홈페이지입니다. " + 	//html 형식으로 작성 ! 
                "<br><br>" + 
			    "회원님의 인증 번호는 " + authNumber + "입니다." + 
			    "<br>" + 
			    "해당 인증번호를 인증번호 확인란에 기입하여 주세요." + //이메일 내용 삽입
				"<br><br>" +
				"앞으로 많은 사랑 부탁드립니다." +
				"<br><br>" +
				" - 팀장 '유' - " ;
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNumber);
	}
	
	//이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) { 
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart(첨부파일 형식의 메세지 전달이 가능).문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	
	}
	
	// ★★ 회원가입시 메일전송 끝 ★★
	
	
	
	// 아이디 찾기
	public String findId(String memberEmail) {
		return memberRepository.findId(memberEmail);
	}
	
	// 비밀번호 찾기
	public void mailSendPw(String memberId, String memberEmail, HttpServletRequest request) {
		
	}
	
}


















