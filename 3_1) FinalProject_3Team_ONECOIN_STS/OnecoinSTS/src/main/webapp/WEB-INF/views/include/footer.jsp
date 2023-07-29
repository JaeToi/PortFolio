<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer 시작 -->
<footer class="nb-footer">
  <div class="container">
    <div class="row" style="text-align: center;">
      <div class="col-sm-12">
        <div class="footer_about">
          <img src="" class="img-responsive center-block" alt="">
            <p>
		              이 페이지의 모든 저작권은 ONECOIN에 있으며, 무단으로 가져간다면 법적인 조치가 가능합니다.
		              추가 문의 사항은 하단의 챗봇을 이용해주시고 공지사항을 상시 확인해주시기 바랍니다.
            </p>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="footer-info-single">
          <h2 class="title">원코인</h2>
          <ul class="list-unstyled">
            <li><a href="/#trainers"><i class="fa fa-angle-double-right"></i> 원코인 강사 소개</a></li>
            <li><a href="/#testimonials" title=""><i class="fa fa-angle-double-right"></i> 수강평 모아보기</a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="footer-info-single">
          <h2 class="title">강의영상</h2>
          <ul class="list-unstyled">
            <li><a href="/study/study" title=""><i class="fa fa-angle-double-right"></i>SPRING</a></li>
            <li><a href="/study/study" title=""><i class="fa fa-angle-double-right"></i>JAVA</a></li>
            <li><a href="/study/study" title=""><i class="fa fa-angle-double-right"></i>DATABASE</a></li>
            <li><a href="/study/study" title=""><i class="fa fa-angle-double-right"></i>FRONTEND</a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="footer-info-single">
          <h2 class="title">강의소개</h2>
          <ul class="list-unstyled">
            <li><a href="/#popular-courses" title=""><i class="fa fa-angle-double-right"></i>추천강의</a></li>
            <li><a href="/#popular-courses" title=""><i class="fa fa-angle-double-right"></i>START FRONTEND</a></li>
            <li><a href="/#popular-courses" title=""><i class="fa fa-angle-double-right"></i>START BACKEND</a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-3 col-sm-6">
        <div class="footer-info-single">
          <h2 class="title">공지사항</h2>
          <ul class="list-unstyled">
            <li><a href="/noticeEventBoard/noticeEvent" title=""><i class="fa fa-angle-double-right"></i>공지사항/이벤트</a></li>
            <li><a href="/oftenQnA/oftenQnA" title=""><i class="fa fa-angle-double-right"></i>Q&A</a></li>
          </ul>
        </div>
      </div>

    </div>
  </div>

  <section class="copyright">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <p>Copyright © 2023. OneCoin Company.</p>
        </div>
        <div class="col-sm-6"></div>
      </div>
    </div>
  </section>
</footer> <!-- footer 끝 -->

<!-- 메인 관련(미르) script 시작 -->
<!-- <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a> -->

<!-- <div id="preloader">
  <div class="line"></div>
</div> -->
<!-- Vendor JS Files -->
<script src="/resources/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/resources/vendor/glightbox/js/glightbox.min.js"></script>

<!-- Template Main JS File -->
<script src="/resources/js/main.js"></script>
<script src="/resources/js/poto.js"></script>

<!-- 메인 관련 script(미르) 끝 -->

<!-- 메인 carousel script 시작 -->
<script src="/resources/js/owl.carousel.js"></script>
<script src="/resources/js/owl.autoplay.js"></script>
<script src="/resources/js/owl.navigation.js"></script>
<!-- 메인 carousel script 끝 -->

<!-- Countdown script     -->
<script src="/resources/js/jquery.flipTimer.js"></script>
 
 <script>
 var owl = $('.main-carousel');
 owl.owlCarousel({
     // 화면에 표시할 항목 개수 지정 : 
     // 한번에 여러개의 이미지를 Carousel로 표현합니다.
     items:1,
     // 무한 반복 적용 여부
     loop:true,
     // 항목과 항목 사이의 간격(margin 적용)
     margin:10,
     // nav 활성화
     // nav:true,
     // navText 표현 지정
     // navText:['이전', '다음'],
     // 자동 스크롤 실행
     autoplay:true,
     // 자동 스크롤할때 시간 간격, 밀리초(milliseconds) 단위
     autoplayTimeout:3000,
     // 내용 위로 마우스 포인터를 올리면 자동 스크롤 일시 멈춤
     autoplayHoverPause:true
     // 실행 확인 : 코딩 완료 후 웹페이지를 실행하면 화면에 이미지가 3개 표시되고,
     // 잠시 기다리면(3000ms=3초) 스크롤이 자동 실행됨을 확인해 봅니다.
 });
</script> <!--Carousel 끝 -->

<!-- Countdown 시작 -->
<script>
  $(document).ready(function() {
    $('.flipTimer').flipTimer({ 

    // D-day로 설정 할경우 down, D+day로 설정할 경우 up 
    direction: 'down', 

    // 날짜와 시간을 설정해 줍니다
    date: ' July 30, 2023 17:00:00', 

    // 시간이 되면 알람창이 뜹니다
    callback: function() { alert('times up!'); },

    });
  });
</script>
<!-- Countdown 끝 -->

<script>
  var owl = $('.t-carousel');
  owl.owlCarousel({
      // 화면에 표시할 항목 개수 지정 : 
      // 한번에 여러개의 이미지를 Carousel로 표현합니다.
      items:3,
      // 무한 반복 적용 여부
      loop:true,
      // 항목과 항목 사이의 간격(margin 적용)
      margin:10,
      // nav 활성화
      // nav:true,
      // navText 표현 지정
      // navText:['이전', '다음'],
      // 자동 스크롤 실행
      autoplay:true,
      // 자동 스크롤할때 시간 간격, 밀리초(milliseconds) 단위
      autoplayTimeout:3000,
      // 내용 위로 마우스 포인터를 올리면 자동 스크롤 일시 멈춤
      autoplayHoverPause:true
      // 실행 확인 : 코딩 완료 후 웹페이지를 실행하면 화면에 이미지가 3개 표시되고,
      // 잠시 기다리면(3000ms=3초) 스크롤이 자동 실행됨을 확인해 봅니다.
  });
</script> 
    
<script>
var owl = $('.study-carousel');
owl.owlCarousel({
    // 화면에 표시할 항목 개수 지정 : 
    // 한번에 여러개의 이미지를 Carousel로 표현합니다.
    items:3,
    // 무한 반복 적용 여부
    loop:true,
    // 항목과 항목 사이의 간격(margin 적용)
    margin:10,
    // nav 활성화
    // nav:true,
    // navText 표현 지정
    // navText:['이전', '다음'],
    // 자동 스크롤 실행
    autoplay:true,
    // 자동 스크롤할때 시간 간격, 밀리초(milliseconds) 단위
    autoplayTimeout:2000,
    // 내용 위로 마우스 포인터를 올리면 자동 스크롤 일시 멈춤
    autoplayHoverPause:true
    // 실행 확인 : 코딩 완료 후 웹페이지를 실행하면 화면에 이미지가 3개 표시되고,
    // 잠시 기다리면(3000ms=3초) 스크롤이 자동 실행됨을 확인해 봅니다.
});
</script>

<script>
  $(function () {
    //쿠키의 값이none이면 id값이 notice_wrap인 요소를 숨깁니다
    if ($.cookie("popup") == 'none') {
      $("#notice_wrap").hide();
    }
    // class값이 closeBtn인 요소를 클릭하면 체크박스의 
    // 체크유무에 따라 쿠키를 생성하며 3일만 저장
    var $expiresChk = $("#expiresChk");
    $(".closeBtn").on("click", closePop);

    function closePop() {
      if ($expiresChk.is(":checked")) {
        $.cookie("popup", "none", { expires: 3, path: "/" });
      }
      $("#notice_wrap").fadeOut("fast");
    }
  });
</script>
<!-- 김재동 스크립트 시작 -->
<script>
	const page = '${pageN}';
	const id = '${NoticeB.noticeId}';
	const page2 = '${pageE}';
	const id2 = '${EventB.eventId}';
	var NTid = '${NoticeB.noticeId}';
</script>
<script src="/resources/js/noticeEventScript.js"></script>


<!-- 검색 기능 관련 -->
<script src="/resources/js/search.js"></script>

<!-- 회원가입 관련 스크립트 -->
<script src="/resources/js/signup.js"></script>
<!-- <script src="/resources/js/emailNumCheck.js"></script> -->
<!-- 로그인 관련 스크립트 시작-->
<script src="/resources/js/login.js"></script> 
<!-- daum API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/js/signupDaumAPI.js"></script>

<!-- 김재동 스크립트 끝 -->
<!-- 팝업 -->
<script src="/resources/js/custom.js"></script>

<!-- 댓글  -->
<script type="text/javascript">
	$(document).ready(
			function() {
				var result = '<c:out value="${result2}" />';

				// 모달창 관련 자바스크립트 소스 코딩(시작)	
				// checkModal() 함수는 파라미터에 따라서 모달창을 보여주거나 내용을 수정한 뒤
				// 보이도록 처리합니다. checkModal()에서는 새로운 게시글이 작성되는 경우
				// RedirectAttributes로 게시물의 번호가 전송되므로 이를 이용해서 모달창의 내용을
				// 수정 처리합니다. $("#modal").modal('show')를 호출하면 모달창이 보이게 됩니다.
				// 실행 확인은 웹 프로젝트 실행 후 '/board/register'를 이용해서 새로운 게시물을 작성하고
				// 나면 자동으로 '/board/list'로 이동하면서 모달창이 보이게 됩니다.		
				checkModal(result);

				// history 객체를 활용하여 글등록 후에
				// 모달창이 필요하지 않다는 표시를 해줍니다.
				history.replaceState({}, null, null);

				function checkModal(result) {
					if (result === '') {
						return;
					}

					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + " 번이 등록 되었습니다!");
					}
					$("#exampleModal1").modal("show");
				}
				// 모달창 관련 자바스크립트 소스 코딩(종료)

				// list.jsp에서 Register New Board 버튼 클릭하면
				// 게시물의 등록 웹페이지로 이동 처리 합니다.
				$("#regBtn").on("click", function() {
					self.location = "/productdetails/yooregister";
				});
				
				var actionForm = $("#actionForm");
				
				$(".paginate_button a").on("click", function(e) {
					e.preventDefault();
					console.log('click');
					actionForm.find("input[name='pageNum']").val($(this).attr("href"));
					actionForm.submit();
				});
				
				$(".move").on("click", function(e) {
					e.preventDefault();
					actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>");
					actionForm.attr("action", "/productdetails/yooget");
					actionForm.submit();
				});

				// Page342 검색 버튼의 이벤트 처리
				// 웹 브라우저에서 검색 버튼을 클릭하면 form 태그 전송은 막고,
				// 페이지의 번호는 1이 되도록 처리합니다.
				// 그리고, 화면에서 키워드가 없다면 검색을 하지 않도록 제어합니다.
				var searchForm = $("#searchForm");
				
				$("#searchForm button").on("click", function(e) {
					
					if(!searchForm.find("option:selected").val()){
						alert("검색 종류를 선택해 주세요!");
						return false;
					}	
					
					if(!searchForm.find("input[name='keyword']").val()){
						alert("검색어 키워드를 입력해 주세요!");
						return false;
					}	
					
					searchForm.find("input[name='pageNum']").val("1");
					
					e.preventDefault();
					
					searchForm.submit();
				});
				
			});
</script>

</body>
</html>