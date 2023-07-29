<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp"%>

<div class="container">
	<form action="/noticeEventBoard/noticeEventsave" method="post"
		class="save_form">
		<h2 style="color: black; margin-bottom: 1rem;">공지사항 글작성</h2>
		<div class="form-group">
			<label class="jea_label">작성자</label> 
			<input type="text" name="noticeBoardWriter" placeholder="작성자" class="save_input form-control" /> <label class="jea_label">제목</label>
			<input type="text" name="noticeBoardTitle" placeholder="제목" class="save_input form-control" /> <label class="jea_label">내용</label>
			<textarea name="noticeBoardContents" cols="20" rows="15" placeholder="내용" class="save_input form-control"></textarea>
		</div>
		<input type="submit" value="등록" class="button_jd btn btn-outline-warning" style="margin-bottom: 1rem;" />
	</form>
</div>
<%@include file="/WEB-INF/views/include/footer.jsp"%>