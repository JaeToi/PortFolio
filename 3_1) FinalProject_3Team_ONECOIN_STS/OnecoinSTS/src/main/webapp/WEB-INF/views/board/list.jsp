<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/Header.jsp"%>
<link href="/resources/css/list.css" rel="stylesheet">


	<img src="/resources/img/community_173.png" alt="이미지" class="list_top">

	<div class="list_con">
		<div class="table_wrap">

			<div class="list_top search_wrap input-group">
				<input type="text" class="search_fo form-control" name="keyword"
					value="${pageMaker.cri.keyword }" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn_seacrch btn btn-outline-secondary" type="button">Search</button>
					<c:if test="${member != null}">
						<a class="btn btn-danger" href="/board/enroll" role="button">게시판
							등록</a>
						<!-- a class="top_a" href="/board/enroll">게시판 등록</a> -->
					</c:if>
				</div>


				<table>
					<thead>
						<tr>
							<th class="bno_width">번호</th>
							<th class="title_width">제목</th>
							<th class="writer_width">작성자</th>
							<th class="regdate_width">작성일</th>
							<th class="updatedate_width">수정일</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="list">
						<tr>
							<td><c:out value="${list.bno}" /></td>

							<td><a class="move" href='<c:out value="${list.bno}"/>'>
									<c:out value="${list.title}" />
							</a></td>

							<td><c:out value="${list.writer}" /></td>
							<td><fmt:formatDate pattern="yyyy/MM/dd"
									value="${list.regdate}" /></td>
							<td><fmt:formatDate pattern="yyyy/MM/dd"
									value="${list.updateDate}" /></td>
						</tr>
					</c:forEach>
				</table>

				<div class="list_page pageInfo_wrap ">
					<div class="pageInfo_area">
						<ul id="pageInfo" class="pageInfo pagination justify-content-center">
							<!-- 이전페이지 버튼 -->
							<c:if test="${pageMaker.prev}">
								<li class="pageInfo_btn page-item"><a class="page-link"	href="${pageMaker.startPage-1}">Previous</a></li>
							</c:if>
							<!-- 각 번호 페이지 버튼 -->
							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a class="page-link"
									href="${num}">${num}</a></li>
							</c:forEach>
							<!-- 다음페이지 버튼 -->
							<c:if test="${pageMaker.next}">
								<li class="pageInfo_btn page-item"><a class="page-link"
									href="${pageMaker.endPage + 1 }">Next</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				
				
				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum }"> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount }"> <input
						type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
				</form>
			</div>
		</div>

		<script type="text/javascript">
   $(document).ready(function() {
      let result = '<c:out value="${result}"/>';
      
      checkAlert(result);
      function checkAlert(result) {
         if(result === ''){
            return;
         }
         if(result === "enrol success"){
            alert("등록이 완료되었습니다");
         }
         if(result === "modify success"){
               alert("수정이 완료되었습니다.");
           }
         if(result === "delete success"){
               alert("삭제가 완료되었습니다.");
           }
      }
      });
   
   let moveForm = $("#moveForm");
    
    $(".move").on("click", function(e){
        e.preventDefault();
        
        moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
        moveForm.attr("action", "/board/get");
        moveForm.submit();
    });
    
   $(".pageInfo a").on("click", function(e){
      e.preventDefault();
        
      moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/board/list");
        moveForm.submit();
        
    });
   
   $(".input-group-append button").on("click", function(e){
        e.preventDefault();
        let val = $("input[name='keyword']").val();
        moveForm.find("input[name='keyword']").val(val);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
</script>
	</div>

	<%@include file="/WEB-INF/views/include/footer.jsp"%>