<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/Header.jsp" %>

               
         
<div class="panel-heading product_heading">글 조회 페이지</div>
	<div class="panel-body">
		<div class="form-group">
            <label>번호</label>
            <input class="form-control" name="bno" value='<c:out value="${yooboard.bno}" />' readonly="readonly">
        </div>
        <div class="form-group">
            <label>제목</label>
            <input class="form-control" name="title" value='<c:out value="${yooboard.title}" />' readonly="readonly">
        </div>
        <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" name="content" readonly="readonly"><c:out value="${yooboard.content}" /></textarea>
        </div>
        
        <div class="form-group">
            <label>작성자</label>
            <input class="form-control" name="writer" value='<c:out value="${yooboard.writer}" />' readonly="readonly"><br>
        </div>
        <button data-oper='yoomodify' class="btn btn-warning" onclick="location.href='/productdetails/yoomodify?bno=<c:out value="${yooboard.bno}" />'">수정하기</button>
        <button data-oper='productDetails' class="btn btn-primary" onclick="location.href='/productdetails/productDetails'">글목록으로</button>
        
        <form action="/productdetails/yoomodify" method="get" id="operForm" >
        	<input type="hidden" id="bno" name="bno" value="<c:out value="${yooboard.bno}" />">
        	<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}" />">
        	<input type="hidden" name="amount" value="<c:out value="${cri.amount}" />">
        	
        	<!-- Page345 : 15.4.2 조회 페이지에서 검색 처리 아래 2줄 소스 추가 적용 -->
        	<input type="hidden" name="type" value="<c:out value="${cri.type}" />" />
			<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}" />" />
        </form>
</div>
                                <!-- /.col-lg-6 (nested) -->
                           
                    
                    
                    
                    <!-- Page414 댓글 목록 처리 get jsp 소스 코딩 시작  -->
					<!-- 댓글 목록 처리 : 댓글의 목록 처리를 위해서는 별도의 div 태그를 생성해서 처리해야 합니다.
					          게시글과 관련된 화면 아래쪽에 div 태그를 추가합니다. 추가하는 div태그에는 나중에 화면의
					          모습을 파악할 수 있도록 간단한 텍스트 등을 구성해 봅니다. -->
					          
					
							<div class="panel-heading product_heading">
								<i class="fa fa-comments fa-fw"></i> 
								<span id="replylistword">댓글목록</span> 
								<button id="addReplyBtn" class="btn btn-success btn-xs pull-right">댓글달기</button>
							</div>
							
							<div class="panel-body">
								<ul class="chat">
									<!-- start reply -->
									<li class="left clearfix" data-rno='12'>
									<hr>
									<div>
										<div class="header">
											<strong class="primary-font">user00</strong><hr>
											<small class="pull-right text-muted">2023-05-22 13:15</small>
										</div>
											<p>Good job!</p><hr>
									</div>
									</li> 
									<!-- end reply -->
								</ul>
								<!-- end reply ul -->
							</div>
							<!-- /.panel-body -->
				<!-- Modal -->
				<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">댓글</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <div class="form-group"><label>내용</label><input class="form-control" name="reply" value="New Reply"></div>
						<div class="form-group"><label>작성자</label><input class="form-control" name="replyer" value="replyer"></div>
						<div class="form-group"><label>ReplyDate</label><input class="form-control" name="replyDate" value=""></div>
				      </div>
				      <div class="modal-footer">
				      	<button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
						<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
						<button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
				
					 
                    
                    <script type="text/javascript" src="/resources/js/reply.js"></script>
					<script type="text/javascript">
					
					$(document).ready(function(){
					var bnoValue = '<c:out value = "${yooboard.bno}" />';
					var replyUL = $(".chat");
					
					showList(1);
					
					function showList(page) {
						replyService.getList({bno:bnoValue, page:page||1}, function(list) {
							var str = "";
							if(list == null || list.lenght == 0){
								replyUL.html("");
								return;
							}
							for(var i = 0, len = list.length||0; i < len; i++){
								str += "<hr><li class='left clearfix' data-rno='"+list[i].rno+"'>";
								str += "	<div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>";
								str += "		<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small></div>";
								str += "	<p>"+list[i].reply+"</p></div></li><hr>";
							}
						
							replyUL.html(str);					
						}); 
						}	//end showList
						
						var modal = $(".modal");
						var modalInputReply = modal.find("input[name='reply']");
						var modalInputReplyer = modal.find("input[name='replyer']");
						var modalInputReplyDate = modal.find("input[name='replyDate']");
					
						var modalModBtn = $("#modalModBtn");
						var modalRemoveBtn = $("#modalRemoveBtn");
						var modalRegisterBtn = $("#modalRegisterBtn");
						
						$("#addReplyBtn").on("click", function(e) {
							modal.find("input").val("");
							
							modalInputReplyDate.closest("div").hide();
							
							modal.find("button[id != 'modalCloseBtn']").hide();
							
							modalRegisterBtn.show();
							$(".modal").modal("show");
							});
					    
							modalRegisterBtn.on("click", function(e) {
								var reply = {
										reply : modalInputReply.val(),
										replyer : modalInputReplyer.val(),
										bno : bnoValue 
								}
								
								replyService.add(reply, function(result) {
									alert(result);
									modal.find("input").val("");
									modal.modal("hide");
							        showList(1);
								
							});
						});
		
							    $(".chat").on("click","li", function(e) {
									var rno = $(this).data("rno");
									replyService.get(rno, function(reply) {
										modalInputReply.val(reply.reply);
										modalInputReplyer.val(reply.replyer);
										modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
										
										modal.data("rno", reply.rno);
										modal.find("button[id != 'modalCloseBtn']").hide();
										modalModBtn.show();
										modalRemoveBtn.show();
										
										
										$(".modal").modal("show");
									});
								});
							    modalModBtn.on("click", function(e) {
									var reply = {rno:modal.data("rno"), reply:modalInputReply.val()};
									replyService.update(reply, function(result) {
										alert(result);
										modal.modal("hide");
										showList(1);
									});
								});
							    
							    modalRemoveBtn.on("click", function(e) {
									var rno = modal.data("rno");
									replyService.remove(rno, function(result) {
										alert(result);
										modal.modal("hide");
										showList(1);
									});
								});
								
					});
					</script>
                    <script type="text/javascript">
                    $(document).ready(function(){
                    	
                    	var operForm = $("#operForm");
                    	
                    	$("button[data-oper='yoomodify']").on("click", function(e) {
							operForm.attr("action", "/productdetails/yoomodify").submit();
						});
                    	
                    	$("button[data-oper='productDetails']").on("click",function(e){
                    		operForm.find("#bno").remove();
                    		operForm.attr("action", "/productdetails/productDetails/#detail-qna-box")
                    		operForm.submit();
                    	});
                    });
                    
                    </script>
                    
                    
            
<%@include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>