<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/Header.jsp" %>

<div class="panel-heading product_heading">Board Modify</div>
	<form action="/productdetails/yoomodify" method="post" role="form" id="modifytotalForm">
		
		<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}" />">
		<input type="hidden" name="amount" value="<c:out value="${cri.amount}" />">
		<input type="hidden" name="type" value="<c:out value="${cri.type}" />" />
		<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}" />" />
                        
        <div class="form-group">
            <label>번호</label>
            <input class="form-control" name="bno" value='<c:out value="${yooboard.bno}" />' readonly="readonly">
        </div>
        <div class="form-group">
            <label>제목</label>
            <input class="form-control" name="title" value='<c:out value="${yooboard.title}" />'>
        </div>
        <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" name="content"><c:out value="${yooboard.content}" /></textarea>
        </div>
        <div class="form-group">
            <label>작성자</label>
            <input class="form-control" name="writer" value='<c:out value="${yooboard.writer}" />' readonly="readonly">
        </div>
       
        <div class="form-group">
            <label>작성일</label>
            <input class="form-control" name="regdate" value='<fmt:formatDate value="${yooboard.regdate}" pattern="yyyy/MM/dd" />' readonly="readonly">
        </div>
        <div class="form-group">
            <label>수정일</label>
            <input class="form-control" name="updateDate" value='<fmt:formatDate value="${yooboard.updateDate}" pattern="yyyy/MM/dd" />' readonly="readonly">
        </div>
        <br />                             
        <button data-oper='yoomodify' class="btn btn-warning">수정완료</button>
        <button data-oper='yooremove' class="btn btn-danger">삭제완료</button>
        <button data-oper='productDetails' class="btn btn-primary">글목록으로</button>
</form><p />

                          
                    
                    <script type="text/javascript">
                    $(document).ready(function(){
                    	var formObj = $("form");
                    	// Javascript에서 button 태그의 'data-oper' 속성을
                    	// 이용해서 원하는 기능을 동작하도록 처리합니다.
                    	$('button').on("click", function(e) {
                    		// form 태그의 모든 버튼은 기본적으로 submit으로
                    		// 처리하기 때문에 e.preventDfault() 메서드로
                    		// 기본 동작을 제한하고,
							e.preventDefault();
							
							var operation = $(this).data("oper");
							
							console.log(operation);
							if(operation === 'yooremove'){
								formObj.attr("action", "/productdetails/yooremove");
							} else if(operation ==='productDetails'){
								// move to list : 수정 페이지(modify.jsp)에서 사용자가 다시 목록 페이지로 이동할 수 있도록 
								// Javascript를 다음과 같이 조금 수정합니다.
								// 수정된 내용은 클릭한 버튼이 List인 경우 action 속성과 method 속성을
						        // 변경합니다. '/board/list'로의 이동은 아무런 파라미터가 없기 때문에
						        // form 태그의 모든 내용은 삭제한 상태에서 submit()을 진행합니다.
								formObj.attr("action", "/productdetails/productDetails/#detail-qna-box").attr("method", "yooget");
							
								// 만약 사용자가  data-oper 속성의 "글목록 조회로 Go!"
								// 버튼을 클릭한다면 form 태그에서 필요한 부분만 잠시 복사(clone)해서
								// 보관해 두고, form 태그 내의 모든 내용은 지워서 초기화 처리합니다(empty).
								// 이후에 다시 필요한 태그들만 추가해서(append) '/board/list'를 호출하는 형태를 이용합니다.
								var pageNumTag = $("input[name='pageNum']").clone();
								var amountTag = $("input[name='amount']").clone();
								var typeTag = $("input[name='type']").clone();
								var keywordTag = $("input[name='keyword']").clone();
							
							
								formObj.empty();
								formObj.append(pageNumTag);
								formObj.append(amountTag);
								formObj.append(typeTag);
								formObj.append(keywordTag);
								
							}
							formObj.submit();	// 마지막에 직접 submit()메서드를 처리합니다.
						});
                    });
                    
                    </script>
                    
                    
            
<%@include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>