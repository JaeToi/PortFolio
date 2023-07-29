<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
<link href="/resources/css/login.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lilita+One&display=swap" rel="stylesheet">
	
<div class="container login_con">	
	<div class="login_wrapper">
		<div class="jumbotron jumbotron-fluid">
 		 <div class="container">
   	 			<h1 class="display-4 login_main">
					<a href="/">
					<span class="logo_main">ONECOIN</span>
				</a>
				</h1>
   				 <hr class="login_hr">
		 </div>
		</div>
		
		<form method="post" id="login_form">
			<div class="login_contents">
				<input class="form-control id_form" type="text" name="memberId" placeholder="아이디를 입력해주세요" aria-label="Disabled input example">
				<input class="form-control pw_form" type="password" name="memberPassword" placeholder="비밀번호를 입력해주세요" aria-label="Disabled input example">
			<c:if test="${result==0}">
				<div class="login_error" style="color:red;">아이디 및 비밀번호가 틀렸습니다.</div>
			</c:if>
  				<button class="login_btn btn btn-outline-primary" id="login_btn" type="button">로그인</button>
			</div>
		</form>
		<div class="login_footer">
			<div class="login_footer_singup">
				<span>아직 회원가입을 안하셨나요?</span>
				<a href="/member/signup"><span class="login_join">회원가입 하러가기</span></a>
			</div>
		</div>
		<div>
			<a href="/member/userSeach">아이디찾기 및 비밀번호 찾기</a>
		</div>
  <div class="my-3 text-center text-small">
      <p class="mb-1 foot_p">&copy; ONECOIN</p>
   </div>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>


















