<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
<!-- 전체 박스 시작 -->
<div class="products-detail container">
    <!-- 상단 박스 시작 -->
    <div class="products-detail-box">
       <div class="products-box-info">
          <!-- 이미지, 브랜드, 상품명, 가격, 사이즈선택  -->
          <div class="products-info-image swiper-container">
             <!-- 이미지 -->
             <div class="swiper-wrapper">
                <c:if test="${prodDto.imgUrl_2 != ''}">
                <div class="product_img swiper-slide">
                   <img src="/resources/img/spring_1.png" />
                   <!-- 동기적으로 불러오기 -->
                </div>
                </c:if>
             </div>
          </div>
       </div>
       <div class="products-box-detail">
          <div class="products-box-detail-company">
             <!-- 제조사 -->
             <a href="#"> <!-- 제조사 URL 동기적 -->
                <span class="products-box-detail-company-color">SPRING 기초부터 배우기</span>
             </a>
          </div>
          <div class="products-box-detail-name">
             <!-- 상품명 -->
             <span>SPRING BOOT BASED</span>
          </div>
          <div class="products-box-detail-price">
             <!-- 가격 -->
             <span class="products-box-detail-price-figure">47,000</span>
             <span>원</span>
          </div>
          <div class="products-box-detail-soldCount border-btm-e1e1e1">
             <!-- 판매량 -->
             <span class="products-box-detail-soldCount-figure">100</span> <span
                class="products-box-detail-soldCount-figure">개 구매중</span>
          </div>
          <div class="products-box-detail-postInfo border-btm-e1e1e1">
             <span class="products-box-detail-postInfo-title">배송정보</span> <span
                class="products-box-detail-postInfo-content">일반배송</span>
          </div>
          <div class="products-box-detail-realInfo border-btm-e1e1e1">
             <span class="products-box-detail-realInfo-title">정품인증</span> <span
                class="products-box-detail-realInfo-content">ONECOIN 내 모든 상품은 100%
                자체제작입니다.</span> <span class="products-box-detail-realInfo-popover"
                onclick="realInfoBox();"></span>
             <div id="realInfo-box">
                &lt;ONECOIN 정품인증&gt;<br />
                ONECOIN에서 판매되는 모든 강의는 정식제조 및 <br />
                자체제작을 통해 유통되는 100% 정품임을 보증합니다.
             </div>
          </div>
          <div class="products-box-detail-allPrice">
             <span class="products-box-detail-allPrice-title">상품 금액</span>
             <span class="products-box-detail-allPrice-figure">
                <fmt:formatNumber value="47000" type="number" />
             </span>
          </div>
          <c:if test="${member != null}">
	          <!-- 버튼 시작 -->
	          <button type="button" class="buy-btn" onclick="fn_buy()">바로 구매</button>
	          <!-- 버튼 끝 -->
          </c:if>
       </div>
    </div>
    <!-- 상단 박스 끝 -->
    <!-- 아래 박스 전체 시작-->
    <div class="wrap-detail-info">
       <!-- 상품정보/리뷰/Q&A/주문정보 시작 -->
       <div class="tab-detail-info">
          <ul class="tab">
             <li class="active" id="tab-review"><a href="#detail-review-box"
                id="tab-review-a"></a></li>
             <li class="active" id="tab-img-text"><a
                href="#detail-review-box" id="tab-img-text-a">상품정보</a></li>
             <li class="active" id="tab-qna"><a href="#detail-qna-box"
                id="tab-qna-a">Q&amp;A</a></li>
             <li class="active" id="tab-purchaseInfo"><a
                href="#detail-purchaseInfo-box" id="tab-purchaseInfo-a"></a></li>
          </ul>
       </div>
       <!-- 상품정보/리뷰/Q&A/주문정보 끝 -->
 
       <!-- 상품 상세 설명 이미지/글 시작 -->
       <!-- 상품 상세 설명 이미지/글 끝 -->
 
       <!-- 리뷰 시작 -->
       <div id="detail-review-box">
          <div class="detail-review-header">상품정보</div>
       <div class="product_title">
       	<h4><mark>초급자</mark>를 위해 준비한</h4>
		<h5><b>[백엔드, 웹 개발] 강의입니다.</b></h5>
		초급에서 중.고급에 이르기까지 스프링 시큐리티의 기본 개념부터 API 사용법과 내부 아키텍처를 학습하게 되고 <br> 이를 		바탕으로 실전 프로젝트를 완성해 나감으로써 스프링 시큐리티의 인증과 인가와 관련된 핵심적인 기술들을 익히게 됩니다.
       </div>
       <section class="cd-fixed-body">
       <div class="cd-fixed-body__title">
    	  ✍️ <br> 이런 걸 <br>  배워요!
       </div>
       <div class="cd-fixed-body__list-content">
       <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티의 기본 API 와 관련 Fiter 완전 정복
       </div>
        <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티의 내부 아키텍처와 객체들간의 역할 및 관계흐름들 이해
       </div>
        <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티의 인증원리와 내부 동작방식 이해
       </div>
        <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티의 인가원리와 내부 동작방식 이해
       </div>
        <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티와 스프링 MVC 를 연계하는 방식 이해
       </div>
          <div class="cd-fixed-body__list">
       <span class="infd-icon">
       <svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16"><path fill="#00C471" fill-rule="evenodd" d="M13.78 4.22c.14.14.22.331.22.53s-.08.39-.22.53l-7.25 7.25c-.14.14-.331.22-.53.22s-.39-.08-.53-.22L2.22 9.28c-.133-.142-.205-.33-.201-.525.003-.194.082-.38.22-.517.137-.137.322-.216.516-.22.195-.003.383.07.525.202L6 10.94l6.72-6.72c.14-.14.331-.22.53-.22s.39.08.53.22z" clip-rule="evenodd">
       </path>
       </svg>
       </span>
       	스프링 시큐리티를 활용해 실무적 수준의 보안 시스템 구축 노하우 학습
       </div>
       </div>
       </section>
       <p>&nbsp;</p>
       <h4 style="text-align: center; background-color: #6db33f; color: #fff; padding: 0.8rem;">
       <span class="product_span" style="color: #f5f5f5;">스프링 시큐리티의 가장 핵심적인 기술을 익히고, 응용합니다.</span>
       </h4>	

          <div class="detail-qna-body">
             <c:if test="${reviewList != null}">
                <c:forEach var="review" items="${reviewList}">
                   <div class="detail-qna-item">
                      <span class="detail-qna-item-number"></span>
                      <span class="detail-qna-item-detail"></span>
                      <span class="detail-qna-item-writerName">
                      </span>
                      <span class="detail-qna-item-createDate">
                         <fmt:formatDate value="${review.createDate}" type="date"/>
                      </span>
                   </div>
                </c:forEach>
             </c:if>
          </div>
       </div>
       <!-- 리뷰 끝 -->
 
       <!-- Q&A 시작 -->
       <div id="detail-qna-box">
          <div class="detail-qna-header">
             Q&amp;A 
       <c:if test="${member != null}">
				<button id="regBtn" type="button" class="btn btn-xs pull-right">글등록</button>
       </c:if>
          </div>
			<!-- /.panel-heading -->
			<div class="panel-body product_body">
				<table width="100%"
					class="table table-striped table-bordered table-hover"
					id="dataTables-example">
					<thead>
						<tr>
							<th class="product_th">번호</th>
							<th class="product_th">제목</th>
							<th class="product_th">작성자</th>
							<th class="product_th">작성일</th>
							<th class="product_th">수정일</th>
						</tr>
					</thead>
					<c:forEach items="${yoolist}" var="board">
						<tr>
							<td class="product_td"><c:out value="${board.bno}" /></td>
							<td class="product_td">
								<a class="move" href="<c:out value="${board.bno}" />"
								target="_blank">
									<c:out value="${board.title}" />
								</a>
							</td>
							<td class="product_td"><c:out value="${board.writer}" /></td>
							<td class="product_td"><fmt:formatDate value="${board.regdate}"
									pattern="yyyy-MM-dd" /></td>
							<td class="product_td"><fmt:formatDate value="${board.updateDate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
				<!-- table 태그의 끝! -->
				
					<form action="/productdetails/productDetails/#detail-qna-box" method="get" id="searchForm">
						<select name="type" class="product_select">
							<option value=""
							<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
							<option value="T" 
							<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
							<option value="C" 
							<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
							<option value="W" 
							<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
						</select>
						<input id="serchcan" type="text" name="keyword" 
						value="<c:out value="${pageMaker.cri.keyword}" />" />
						<input name="pageNum" type="hidden" value="<c:out value="${pageMaker.cri.pageNum}" />">
						<input name="amount" type="hidden"  value="<c:out value="${pageMaker.cri.amount}" />">
						<a href="#detail-qna-box"><button type="button" class="btn btn-primary">검색 </button></a>
					</form>
				
				<!-- [중요 : pages 폴더에서 tables.html 우클릭
				 - Run On Server - F12 - 우측 하단 페이지 네이션(pagination 클래스) 요소 선택 - pagination 클래스 소스 위에서 마우스 우클릭 -
- Edit as HTML 클릭 - 소스 복사해서 list.jsp 안에 </table> 밑에 복사 붙여넣기 해서 넣어줌] -->
				<!-- Ctrl + Shift + F -->
				<div class="pull-right ">
					<ul class="pagination yooprodetail">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage - 1}">이전페이지</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" : ""}"><a href="${num}">${num}</a></li>		
						</c:forEach>
						<c:if test="${pageMaker.next}">				
							<li class="paginate_button next"><a href="${pageMaker.endPage + 1}">다음페이지</a></li>
						</c:if>
					</ul>
				</div>
				<!-- end Pagination -->
				
				<!-- Page 311 윗부분 내용 소스 코딩 시작  -->
				<form id="actionForm" action="#detail-qna-box" method="get">
					<input name="pageNum" type="hidden" value="${pageMaker.cri.pageNum}">
					<input name="amount" type="hidden"  value="${pageMaker.cri.amount}">
					
					
					<!-- Page344 : 검색 조건과 키워드에 대한 처리를 아래와 같이 하면,
					 검색 후 페이지를 이동해서 동일한 검색 사항들이 계속 유지되게 할 수 있습니다. -->
					<input type="hidden" name="type" 
						value="<c:out value="${pageMaker.cri.type}" />" />
					<input type="hidden" name="keyword" 
						value="<c:out value="${pageMaker.cri.keyword}" />" />				
				</form>
				<!-- Page 311 윗부분 내용 소스 코딩 끝  -->
								
				<!-- Modal -->
				<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        처리가 완료되었습니다
				      </div>
				      <div class="modal-footer">
				        <a href="#detail-qna-box"><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button></a>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<!-- /.table-responsive -->
       </div>
       <!-- Q&A 끝 -->
 
       <!-- 주문정보 시작 -->
       <div id="detail-purchaseInfo-box">
          <div class="detail-purchaseInfo-header">
            	 환불 정보 <span class="products-box-detail-realInfo-popover"
                onclick="addressInfoBox();"> ∨ </span>
          </div>
          <div id="addressInfo-box">
             <b>[ 환불 정책 ]</b><br />
             <p>
				1) 결제일로부터 7일 이내 환불을 요청하는 경우<br>
				1. 2강 이하 수강한 경우 : 결제금액 100% 환불 가능합니다.<br />
				2. 3강 이상 수강한 경우 : 환불액 = 결제금액 – 학습수수료<br />
				
				2) 결제일로부터 7일 경과 후, 환불을 요청하는 경우<br />
				1. 수강하지 않은 경우 : 환불액 = 결제금액 - 위약금 (결제금액의 10% )<br />
				2. 1강 이상 수강한 경우 : 환불액 = 결제금액 - 학습수수료 - 위약금 (결제금액의 10% )<br />
				★ 중요 : 학습수수료는 수강한 강의의 실제 단과강의 판매 가격을 기준으로 계산합니다. 공제액은 수강한 강좌의 전체강좌 수 대비 수강한 수에 비례하여 산정한 금액으로 계산합니다.
             </p>
          </div>
		  <div class="foot_mark my-3 text-center text-small">
		      <p class="mb-1 foot_p">&copy; ONECOIN</p>
		   </div>
       </div>
       <!-- 주문정보 끝 -->
    </div>
    <!-- 아래 박스 전체 끝 -->
 </div>
 
 <script>
 function fn_buy() {
		var IMP = window.IMP;
		<!-- https://github.com/iamport/iamport-manual/blob/master/인증결제/sample/inicis.md -->
		IMP.init('imp68800872'); //portone 대신 자신의 "가맹점 식별코드"를 사용하시면 됩니다
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({
			pg : "html5_inicis",
			pay_method : "card",
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '결제테스트',  // 상품명
			amount : 10,		// 금액
			buyer_email : 'woehd1019@naver.com', // 자기이메일
			buyer_name : '장나라',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456',
		}, function(rsp) {  // callback
			if ( rsp.success ) {
				var paymentInfo = {
					imp_uid : rsp.imp_uid,
					merchant_uid : rsp.merchant_uid,
					paid_amount : rsp.paid_amount,
					apply_num : rsp.apply_num,
					paid_at : new Date()
				};
				
			$.ajax({
				url : "/productdetails/paymentProcess.do",
				method: "post",
				contentType : "application/json",
				data : JSON.stringify(paymentInfo),
				success : function(data, textStatus){
					console.log(paymentInfo);
					alert("결제가 완료되었습니다.");
					
				},
				error : function(e){
					console.log(e);
				}
			});
			
			
			} else {
				alert("결제실패 : " + rsp.error_msg )
			}
		});
	}
 
 </script>
 
 


<%@include file="/WEB-INF/views/include/footer.jsp" %>


