$(document).ready(function(){
	// 검색 관련 jqeury (autocomplete)
	$("#search-bar").autocomplete({
			source : function(request, response){ // source : 입력시 보일 목록
				$.ajax({
				url : "/search/autocomplete.do",
				type : "POST",
				dataType : "JSON",
				data : {value : request.term}, // 검색 키워드 // request.term -> text에 입력된값
				success : function(data){ // 성공시
					response(
						$.map(data.resultList, function(item){
							return {	
								// 여기서 keyword는 database의 값임
								label : item.keyword, // 목록에 표시되는 값 
								value : item.keyword,  // 선택시 input창에 표시되는 값
								idx : item.search_seq // index (database의 시퀀스)
							};
						})	
					); // reponse 끝
				},
				error : function(){ // 실패시
					alert("오류발생");
				}
			}); 
		},
		focus : function (event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌
			return false;
		},
		minLength : 1, // 최소글자수
		autoFocus : true, // true == 첫 번째 항목에 자동으로 초점이 맞춰짐
		delay : 100, //autocomplete 딜레이 시간(ms)
		select : function(evt, ui){ 
		   	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
		}
	}); // autocomplete 끝
	
	
	$("#search_btn").on("click",function(){
		var searchBar = $("#search-bar").val();
		if(searchBar == "SPRING"){
			$("#search_form").attr("action","/productdetails/productDetails");
			$("#search_form").submit();
		}
	})	
	
})
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	