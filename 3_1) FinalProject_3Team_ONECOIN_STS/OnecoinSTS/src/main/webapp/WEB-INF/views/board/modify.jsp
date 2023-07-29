<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>
<img src="/resources/img/community_173.png" alt="이미지"  class="qna_top">	

	<div class="container">
	<br>
	<form id="modifyForm" action="/board/modify" method="post">
		<div class="form-group">
			<label class="you_label">게시판 번호</label> 
			<input name="bno" readonly="readonly" class="you_input form-control" value='<c:out value="${pageInfo.bno}"/>'>
		</div><br>
		<div class="form-group">
			<label class="you_label">게시판 제목</label> 
			<input name="title" class="you_input form-control"
				value='<c:out value="${pageInfo.title}"/>'>
		</div><br>
		<div class="form-group">
			<label class="you_label">게시판 내용</label>
			<textarea rows="3" name="content" class="you_textarea form-control">
			<c:out value="${pageInfo.content}" /></textarea>
		</div><br>
		<div class="form-group">
			<label class="you_label">게시판 작성자</label> 
			<input name="writer" readonly="readonly" class="you_input form-control"
				value='<c:out value="${pageInfo.writer}"/>'>
		</div><br>
		<div class="input-group mb-3">
			<label class="you_label input-group-text">게시판 등록일</label> 
			<input name="regdater" readonly="readonly" class="you_input form-control" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>'>
	
			<label class="you_label input-group-text">게시판 수정일</label> 
			<input name="updateDate" readonly="readonly" class="you_input form-control" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>'>
		</div>
		<div class="btn_wrap btn-group">
	        <a class="btn btn-outline-info you_btn" id="list_btn">목록 페이지</a>
	        <c:if test="${member != null}"> 
		        <a class="btn btn-outline-success you_btn" id="modify_btn">수정 완료</a>
		        <a class="btn btn-outline-warning you_btn" id="cancel_btn">수정 취소</a>
		        <a class="btn btn-outline-danger you_btn" id="delete_btn">삭제</a>	
	        </c:if>	
	    </div>
	</form><br>
	<form id="infoForm" action="/board/modify" method="get">
		<input class="you_input" type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input class="you_input" type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input class="you_input" type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input class="you_input" type="hidden" name="keyword" value="${cri.keyword}"  placeholder="주제의 검색어를 입력하세요">
	</form>
	

	<script>
	var form = $("#infoForm");   	//페이지 이동 form(리스트 페이지이동, 조회 페이지 이동)
	var mForm =$("#modifyForm");   //페이지 데이터 수정 form
	
	
	//목록페이지 이동 버튼
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	//수정하기 버튼
	$("#modify_btn").on("click", function(e){
		mForm.submit();
	});
	
	//삭제버튼 구동
	    $("#delete_btn").on("click", function(e){
        form.attr("action", "/board/delete");
        form.attr("method", "post");
        form.submit();
    });
	
	//취소 버튼
	$('#cancel_btn').on("click", function (e) {
		form.attr("action", "/board/get");
		form.submit();
	});	
</script>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
