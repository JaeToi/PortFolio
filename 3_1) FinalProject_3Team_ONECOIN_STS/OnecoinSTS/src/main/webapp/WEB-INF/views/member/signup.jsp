<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>


<div class="container signup_container">
   <div class="input-form-backgroud row">
      <div class="input-form col-md-8 mx-auto">
         <h4 class="mb-3">회원가입</h4>
         <form id="join_form" method="post">
         <div class="row">
            <div class="mb-3">
               <label for="name">아이디</label>
               <input type="text" class="input_sign form-control" name="memberId" id="memberId" placeholder="id" value="" >
               <span class="invalid-feedback id_ck">아이디를 입력해주세요.</span>
               <span class="id_ck1">사용 가능한 아이디 입니다.</span>
               <span class="id_ck2">아이디가 이미 존재합니다.</span>
            </div>
            <div class="mb-3">
               <label for="nickname">비밀번호</label>
               <input type="password" class="input_sign form-control" name="memberPassword" id="memberPassword" placeholder="password" value="" >
               <div class="invalid-feedback pw_ck">비밀번호를 입력해주세요.</div>
            </div>
            <div class="mb-3">
               <label for="name">이름</label>
               <input type="text" class="input_sign form-control" name="memberName" id="memberName" placeholder="name" value="" >
               <div class="invalid-feedback">
               이름을 입력해주세요.
               </div>
            </div>
            <div class="mb-3">
               <label for="nickname">비밀번호 확인</label>
               <input type="password" class="input_sign form-control memberPwCk" name="memberPwCk" id="memberPwCk" placeholder="password" value="" >
               <span class="pw_ck_ck">비밀번호 확인을 입력해주세요</span>
               <span class="invalid-feedback pw_ck_ck1">비밀번호가 일치합니다</span>
               <span class="invalid-feedback pw_ck_ck2">비밀번호가 일치하지않습니다</span>
            </div>
         </div>

         <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="input_sign form-control memberEmailChk" name="memberEmail" id="memberEmail" placeholder="you@example.com" >
            <div class="invalid-feedback email_ck1">이메일을 입력해주세요</div>
            <div class="invalid-feedback email_ck2">이메일을 올바르게 입력해주세요</div>
            <div class="invalid-feedback email_ck3">올바른 이메일입니다.</div>
            <div class="invalid-feedback email_ck4">이미 등록된 이메일 입니다.</div>
            <div class="invalid-feedback email_ck5">사용 가능한 이메일 입니다.</div>
            <div class="num_btn">
            	<button type="button" class="number_btn btn btn-outline-warning btn-sm" id="email_Num_send">인증번호전송</button>
            </div>
          </div>
          
          
         <div class="mb-3">
         	
         	<div style="display:flex">
	         	<input type="text" class="input_sign form-control mailNum_input" placeholder="인증번호를 입력해주세요!" />
         	 </div>
         	 <span id="mail-check-warn"></span>
         </div>

         <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="input_sign form-control" name="memberAdress" id="memberAdress" placeholder="주소를 입력해주세요." >
            <div class="invalid-feedback adress_ck">주소를 입력해주세요.</div>
          </div>

         <button type="button" class="number_btn btn btn-outline-warning btn-sm" onclick="sample6_execDaumPostcode()">주소찾기</button>
         <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="input_sign form-control" id="address2" placeholder="상세주소를 입력해주세요.">
         </div>     
         <hr class="mb-4">
         <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
         </div>
         <div class="mb-4"></div>
         <button class="btn btn_signup2 btn-warning btn-lg btn-block signup_btn">가입완료</button>
         </form>
      </div>
   </div>
   <div class="foot_mark my-3 text-center text-small">
      <p class="mb-1 foot_p">&copy; ONECOIN</p>
   </div>
</div>

<script>
$('#email_Num_send').click(function() {
	const eamil = $('#memberEmail').val() // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + eamil); // 이메일 오는지 확인
	const checkInput = $('.mailNum_input') // 인증번호 입력하는곳 
	
	$.ajax({
		type : 'get',
		url : '<c:url value ="/member/mailCheck?email="/>'+eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
		success : function (data) {
			console.log("data : " +  data);
			checkInput.attr('disabled',false);
			code =data;
			alert('인증번호가 전송되었습니다.')
		}			
	}); // end ajax
}); // end send eamil


//인증번호 비교 
//blur -> focus가 벗어나는 경우 발생
$('.mailNum_input').blur(function () {
const inputCode = $(this).val();
const $resultMsg = $('#mail-check-warn');

if(inputCode === code){
	$resultMsg.html('인증번호가 일치합니다.');
	$resultMsg.css('color','green');
	$('#mail-Check-Btn').attr('disabled',true);
	$('#userEamil1').attr('readonly',true);
	$('#userEamil2').attr('readonly',true);
	$('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
     $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
}else{
	$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
	$resultMsg.css('color','red');
}
});
</script>


<%@include file="/WEB-INF/views/include/footer.jsp" %>