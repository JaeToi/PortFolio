
// 공지사항 글 목록 
const noticeListBtn=()=>{
	location.href = "/noticeEventBoard/noticeEvent?nPage=" + page;
}

// 공지사항 글 수정
function noticeUpdateBtn(){
    location.href = "/noticeEventBoard/noticeUpdate?NTid=" + id;
}

// 공지사항 글 삭제
function noticeDeleteBtn(){
    location.href = "/noticeEventBoard/noticeDelete?NTid=" + id;
}

// 이벤트 글목록
function eventListBtn() {
	 location.href = "/noticeEventBoard/noticeEvent2?ePage=" + page2
}

// 이벤트 글 수정
function eventUpdateBtn(){

    location.href = "/noticeEventBoard/eventUpdate?NTid=" + id2;
}

// 이벤트 글 삭제
function eventDeleteBtn(){

    location.href = "/noticeEventBoard/eventDelete?NTid=" + id2;
}


//★★공지사항 댓글  관련 스크립트★★
	
