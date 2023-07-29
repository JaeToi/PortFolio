<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

	<form class="save_form" action="/noticeEventBoard/noticeUpdate" method="post" style="margin:0 auto; width:50%; text-align: center">
		<h2 style="color: black; margin-bottom: 1rem;">공지사항 글수정</h2>
		<div class="form-group">
			<label class="jea_label">글번호</label>
			<input type="hidden" name="noticeId" value="${NoticeUp.noticeId}" readonly="readonly" class="save_input form-control" />
			<span>${NoticeUp.noticeId}</span>
		</div>
		<div class="form-group">
			<label class="jea_label">제목</label>
			<input type="text" name="noticeBoardTitle" value="${NoticeUp.noticeBoardTitle}" class="save_input form-control"  />
		</div>
		<div class="form-group">
			<label class="jea_label">작성자</label>
			<input type="text" name="noticeBoardWriter" value="${NoticeUp.noticeBoardWriter}" readonly="readonly" class="save_input form-control"  />
		</div>
		<div class="form-group">
			<label class="jea_label">내용</label>
			<textarea class="save_input form-control" id="" cols="20" rows="15" name="noticeBoardContents">${NoticeUp.noticeBoardContents}</textarea>
		</div>
		<input type="submit" value="등록" class=	"save_input" />
	</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>