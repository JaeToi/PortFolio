<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

	<form action="/noticeEventBoard/eventUpdate" method="post" style="margin:0 auto; width:50%; text-align: center">
		<h2 style="color: black; margin-bottom: 1rem;">이벤트 글수정</h2>
		<div class="form-group">
			<label class="jea_label">글번호</label>
			<input type="hidden" name="eventId" value="${EventUp.eventId}" readonly="readonly" class="save_input form-control" />
			<span>${EventUp.eventId}</span>
		</div>
		<div class="form-group">
			<label class="jea_label">제목</label>
			<input type="text" name="eventBoardTitle" value="${EventUp.eventBoardTitle}" class="save_input form-control"  />
		</div>
		<div class="form-group">
			<label class="jea_label">작성자</label>
			<input type="text" name="eventBoardWriter" value="${EventUp.eventBoardWriter}" readonly="readonly" class="save_input form-control"  />
		</div>
		<div class="form-group">
			<label class="jea_label">내용</label>
			<textarea class="save_input form-control" id="" cols="20" rows="15" name="eventBoardContents">${EventUp.eventBoardContents}</textarea>
		</div>
		<input type="submit" value="등록" class="save_input" />
	</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>