<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

      <div class="container">
         <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
           <li class="nav-item" role="presentation">
             <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">아이디 찾기</button>
           </li>
           <li class="nav-item" role="presentation">
             <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">비밀번호 찾기</button>
           </li>
         </ul>
         <div class="tab-content" id="pills-tabContent">
           <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
              <input type="email" placeholder="이메일을 입력해주세요" id="inputEmail" />
              <input type="button" value="아이디찾기" id ="idSearch_click" data-bs-toggle="modal" data-bs-target="#exampleModal" />
           </div>
           <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
              <input type="text" placeholder="아이디를 입력해주세요" />
              <input type="text" placeholder="이메일을 입력해주세요" />
              <input type="button" value="비밀번호 찾기" />
           </div>
         </div>
      </div>
      
      <!-- Modal(아이디찾기) -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">아이디찾기</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div>
                 <h4>당신의 아이디는?</h4>
              </div>
              <div>
                 <h4 id="id_value" style="color:red"></h4>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
            </div>
          </div>
        </div>
      </div>
      
<script>
   $("#idSearch_click").on("click",function(){
      var inputEmail = $("#inputEmail").val();
      $.ajax({
         type:"POST",
         url : "/member/userSeach?email=" + inputEmail,
         success:function(data){ 
               if (data == 0){
                  $("#id_value").text("일치하는 아이디가 없습니다.");
               } else {
                  $("#id_value").text(data);
               }
            }
         })
      })
</script>
<!-- 순남2 Blog 참조 -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
