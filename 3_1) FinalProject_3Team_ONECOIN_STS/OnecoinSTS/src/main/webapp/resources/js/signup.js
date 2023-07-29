
/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var mailCheck = false;            // 이메일
var addressCheck = false;         // 주소
   
   
   
   
// 회원가입 버튼 클릭 작동 스크립트
$(document).ready(function(){
	// 회원가입 버튼(회원가입 기능 작동)
	$(".signup_btn").click(function(){
		
		var name = $("#memberId").val(); // 회원 id 입력란
		var password = $("#memberPassword").val(); // 회원 비밀번호 입력란
		var pwCk = $("#memberPwCk").val(); // 회원 비밀번호체크 입력란
		var email = $("#memberEmail").val(); // 회원 이메일 입력란
		var adress = $("#memberAdress").val(); // 회원 주소 입력란
		
		// 아이디 유효성 검사
		if (name ==""){
			$(".id_ck").css("display","block");
			idCheck = false;
		} else {
			$(".id_ck").css("display","none");
			idCheck = true;
		}
		
		// 비밀번호 유효성 검사
		if (password ==" "){
			$(".pw_ck").css("display","block");
			pwCheck = false;
		} else {
			$(".pw_ck").css("display","none");
			pwCheck = true;
		}
		
		// 비밀번호확인 유효성 검사
		if (pwCk == " "){
			$(".pw_ck_ck").css("display","block");
			pwckCheck = false;
		} else {
			$(".pw_ck_ck").css("display","none");
			pwckCheck = true;
		}
		
		
        /* 이메일 유효성 검사 */
        if(email == ""){
            $('.email_ck1').css('display','block');
            mailCheck = false;
        }else{
            $('.email_ck1').css('display', 'none');
            mailCheck = true;
        }
        
        /* 주소 유효성 검사 */
        if(adress == ""){
            $('.adress_ck').css('display','block');
            addressCheck = false;
        }else{
            $('.adress_ck').css('display', 'none');
            addressCheck = true;
        }
        
        /* 최종 유효성 검사 */
        if(idCheck&idckCheck&pwCheck&pwckCheck&mailCheck&addressCheck&pwckcorCheck&mailformCheck){
            $("#join_form").attr("action", "/member/signup");
            $("#join_form").submit(); 
        }

	})
	
});
   
   
   
// 아이디 중복검사
$("#memberId").on("propertychange change keyup paste input",function(){
	var memberId = $("#memberId").val();
	var data = {memberId:memberId}
	$(".id_ck").css("display","none");
	
	$.ajax({
		type : "post",
		url  : "/member/memberIdChk",
		data : data,
		success : function (result){
			if(result != "fail"){
				$(".id_ck1").css("display","inline-block");
				$(".id_ck2").css("display","none");
				idckCheck = true;
			} else {
				$(".id_ck2").css("display","inline-block");
				$(".id_ck1").css("display","none")
				idckCheck = false;
			}
			
			
		}
	})
});

// 비밀번호 확인 유효성 검사
$('.memberPwCk').on("propertychange change keyup paste input", function(){
    var pw = $('#memberPassword').val();
    var pwck = $('#memberPwCk').val();
    $(".pw_ck_ck").css("display","none");
    
    if(pw == pwck){
        $(".pw_ck_ck1").css("display","block");
        $(".pw_ck_ck2").css("display","none");
        pwckcorCheck = true;
    }else{
        $(".pw_ck_ck2").css("display","block");
        $(".pw_ck_ck1").css("display","none");
        pwckcorCheck = false;
    }  
    
});

//이메일 형식 유효성 검사
$(".memberEmailChk").on("propertychange change keyup paste input", function(){
	var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	var memberEmail = $("#memberEmail").val();
	var data = {memberEmail:memberEmail}
	$(".email_ck1").css("display","none");
	if(memberEmail.match(form) != null ){
		$(".email_ck3").css("display","block");
		$(".email_ck2").css("display","none");
		mailformCheck = true;
	} else {
		$(".email_ck2").css("display","block");
		$(".email_ck3").css("display","none");
		mailformCheck = false;
	}
	
	
	$.ajax({
		type : "post",
		url  : "/member/memberEmailChk",
		data : data,
		success : function (result2){
			if(result2 != "fail"){
				$(".email_ck4").css("display","none");
				$(".email_ck5").css("display","block");
				mailCheck = true;
			} else {
				$(".email_ck4").css("display","inline-block");
				$(".email_ck5").css("display","none");
				mailCheck = false;
			}
		}
	})
	
	
});



