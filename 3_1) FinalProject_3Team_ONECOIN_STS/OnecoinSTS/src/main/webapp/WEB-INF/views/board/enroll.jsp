<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
<link href="/resources/css/enroll.css" rel="stylesheet">
<img src="/resources/img/community_173.png" alt="이미지"  class="qna_top">

<div class="en_top container">
<div class="bd-callout bd-callout-info">
<h4>게시판 글쓰기</h4>
</div>
<form action="/board/enroll" method="post">
 <div class="form-group">
      <label for="title">제목</label>
      <input type="text" class="form-control" id="title"
       placeholder="제목 입력(4-100)" name="title"
       maxlength="100" required="required"
       pattern=".{4,100}">
    </div>
    <div class="form-group">
   <label for="content">내용</label>
   
   <textarea class="form-control" rows="5" id="content"
    name="content" placeholder="내용 작성"></textarea>
 </div>
    <div class="form-group">
      <label for="writer">작성자</label>
      <input type="text" class="form-control" id="writer"
       placeholder="작성자(2자-10자)" name="writer">
    </div>
    <c:if test="${member != null}">
	    <div class="enfoot_main">
	    	<button type="submit" class="enfoot_btn btn btn-warning">등록</button>
	    </div>
    </c:if>
  </form>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>