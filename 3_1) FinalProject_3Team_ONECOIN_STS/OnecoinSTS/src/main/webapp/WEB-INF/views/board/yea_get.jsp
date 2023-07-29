<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>
<img src="/resources/img/error.png" alt="이미지"  class="imgvar_top" style="margin-bottom: 2rem;">

	<div class="container">
	<div class="input-group input-group-sm mb-3">
		<label class="yea_label input-group-text" id="inputGroup-sizing-sm">게시판 번호</label>
		<input class="yea_input form-control" name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-3">
		<label class="yea_label input-group-text" id="inputGroup-sizing-sm">게시판 제목</label>
		<input class="yea_input form-control" name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group">
		<label class="yea_label input-group-text">게시판 내용</label>
		<textarea class="yea_textarea form-control" rows="4" name="content" readonly="readonly">
		<c:out value="${pageInfo.content}" /></textarea>
	</div><br>
	<div class="input-group input-group-sm mb-3">
		<label class="yea_label input-group-text" id="inputGroup-sizing-sm">게시판 작성자</label>
		<input class="yea_input form-control" name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group">
		<label class="yea_label input-group-text">게시판 등록일</label>
		<input class="yea_input form-control" name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
		<label class="yea_label input-group-text">게시판 수정일</label>
		<input class="yea_input form-control" name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
	</div><br>	
	<div class="btn_wrap btn-group">
		<a class="btn btn-outline-info yea_btn" id="list_btn">목록 페이지</a>
		<c:if test="${member != null}"> 
			<a class="btn btn-outline-success yea_btn" id="modify_btn">수정 하기</a>
		</c:if>
	</div><br>
	<form id="infoForm" action="/board/yea_modify" method="get">
		<input class="yea_input" type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input class="yea_input" type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input class="yea_input" type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input class="yea_input" type="hidden" name="keyword" value="${cri.keyword }" placeholder="주제의 검색어를 입력하세요"> 
	</form><br>
<script>
 	
	var form = $("#infoForm");
	
		 $("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/yea_list");
		form.submit();
	}); 
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/yea_modify");
		form.submit();
	});	
</script>
</div>
	
<%@include file="/WEB-INF/views/include/footer.jsp" %>

