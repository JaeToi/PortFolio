# PortFolio

## < 프로젝트 소개 > 
One코인은 온라인 강의 제공을 위한 반응형 웹 사이트를 개발하기 위해   
기획되었습니다. 
이 프로젝트의 주요 의도는 다음과 같습니다.
One코인은 사람들에게 어디서나 언제나 접근 가능한 온라인 강의 플랫폼을 제공하기
위해 기획되었습니다. 이를 통해 지리적, 시간적 제약 없이 누구나 원하는 강의를
수강할 수 있게 됩니다. 다양한 주제와 분야의 강의를 제공함으로써 보통 설명으로
이해가 잘 가지 않아 어려움을 겪는 분들을 위해 디테일적인 부분을 강조하여
초심자들의 학습 욕구를 충족시키고자 합니다.



### ※ 사용 Tool ※
- Eclipse  (STS)
- DB (OracleDB)
- React (VScode)
- AndroidApp Studio

※ 참조 : 압축푸는순서는 상관없다. 

### ※ < STS만으로 구현한 프로젝트 > ※

 0. Project_Finally_3Team_sql.sql 파일을 OracleDB에 복사후 Ctrl+A로 전체 선택 Ctrl+Enter로 입력한다.

1. 3_1)FinalProject_3Team_ONECOIN_STS.zip 파일의 압축을 푼다. ( 사용한 Tool : STS )
  - 1-1) src-> main -> webapp -> WEB-INF -> spring -> root.context.xml 파일에 DataBase의 아이디/비밀번호를 확인한다.
  - 1-1) ONECOIN_STS (오른쪽마우스)-> Run As -> Run on Server 클릭하여 서버를 구동시킨다.
    
---------------------------------------------------------------------------------------------------------------------------

### ※ < React 및 SpringBoot로 구현한 프로젝트 > ※

 2. 3_3)FinalProject_3Team_ONECOIN_ReactBackEnd 의 압축을 푼다. ( 사용한 Tool : STS )
  - 2-1) src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
	- ① server.port = 9008
	② spring.datasource.username = one 
	③ spring.datasource.password = one
	③ spring.jpa.hibernate.ddl-auto = update
  - 2-2) Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

 3. 3_2)FinalProject_3Team_ONECOIN_ReactFrontEnd 의 압축을 푼다. ( 사용한 Tool : VS Code )
  - 3-1) 위 상단에 Terminal 클릭 New Terminal 클릭 후 하단 오른쪽에 + 버튼을 눌러 command Prompt(cmd)를 선택해준다
  - 3-2) 파일경로(cd..)를 찾아 들어간후 npm install 입력하여 module을 설치해준다.
  - 3-3) 설치가 끝나면 package.json 파일에 "proxy":"http://192.168.0.55:9008"  or "proxy":"http://localhost:9008"를 추가해준다.
  - 3-4) Terminal의 command Prompt(cmd)에서 npm start로 서버를 구동시켜준다.
---------------------------------------------------------------------------------------------------------------------------
   
### ※ <Android Studio 및 SpringBoot로 구현한 프로젝트> ※

 5. 3_5)FinalProject_3Team_ONECOIN_Android_Backend 의 압축을 푼다. ( 사용한 Tool : STS )
  - 4-1) src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
	① server.port = 9003
	② spring.datasource.username = one 
	③ spring.datasource.password = one
	③ spring.jpa.hibernate.ddl-auto = update 
  - 4-2) Onecoin_SpringBoot_AndroidApp (오른쪽마우스) -> Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

 6. 3_4)FinalProject_3Team_ONECOIN_Android_Frontend 의 압축을 푼다. ( 사용한 Tool : Android Studio )
  - 5-1) app-> java -> com.androidstudy.toolbarscrollviewexample 안에 있는 MainActivity, SignUpActivity 파일의 내용을 아래와 동일한지 확인해준다.
	① MainActivity 68번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/"  or "http://localhost:9003/")
	② SignUpActivity 60번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/" or "http://localhost:9003/")

  - 5-2) 그런다음 위쪽에 bar부분 start(▶)을 버튼을 클릭하여 구동시킨다.
  
---------------------------------------------------------------------------------------------------------------------------

 6. ONECOIN 파일을 실행시키면 Header(NavBar) 커뮤니티 부분에 '자유게시판' 은 SpringBoot + React랑 연동되어있어서 
      3_1)FinalProject_3Team_ONECOIN_STS의 압축을 풀면 나오는 
      ONECOINSTS 파일의 src-> main -> webapp -> WEB-INF -> views ->include -> Header.jsp -> 162번째 줄 수정해줘야함!! (ex. "http://localhost:3000/" or "http://192.168.0.55:3000/" )
    
   

