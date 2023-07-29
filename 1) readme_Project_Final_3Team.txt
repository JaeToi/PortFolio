※ 사용 Tool ※
- Eclipse  (STS)
- OracleDB
- React (VScode)
- AndroidApp Studio

0. Project_Finally_3Team_sql.sql 파일을 OracleDB에 복사후 Ctrl+Enter로 삽입해준다.

1. FinalProject_3Team_ONECOIN_STS.zip 파일의 압축을 푼다.
 1-1) src-> main -> webapp -> WEB-INF -> spring -> root.context.xml 파일에 DataBase의 아이디/비밀번호를 확인한다.
 1-1) ONECOIN_STS (오른쪽마우스)-> Run As -> Run on Server 클릭하여 서버를 구동시킨다.

2. FinalProject_3Team_ONECOIN_ReactBackEnd 의 압축을 푼다.
 2-1) src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
	① server.port = 9008
	② spring.datasource.username = one 
	③ spring.datasource.password = one
	③ spring.jpa.hibernate.ddl-auto = update
 2-2) Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

3. FinalProject_3Team_ONECOIN_ReactFrontEnd 의 압축을 푼다.
 3-1) 위 상단에 Terminal 클릭 New Terminal 클릭 후 하단 오른쪽에 + 버튼을 눌러 command Prompt(cmd)를 선택해준다
 3-2) 파일경로(cd..)를 찾아 들어간후 npm install 입력하여 module을 설치해준다.
 3-3) 설치가 끝나면 package.json 파일에 "proxy":"http://192.168.0.55:9008"  or "proxy":"http://localhost:9008"를 추가해준다.
 3-4) Terminal의 command Prompt(cmd)에서 npm start로 서버를 구동시켜준다.

4. FinalProject_3Team_ONECOIN_Android_Backend 의 압축을 푼다.
 4-1) src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
	① server.port = 9003
	② spring.datasource.username = one 
	③ spring.datasource.password = one
	③ spring.jpa.hibernate.ddl-auto = update 
 4-2) Onecoin_SpringBoot_AndroidApp (오른쪽마우스) -> Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

5. FinalProject_3Team_ONECOIN_Android_Frontend 의 압축을 푼다.
 5-1) app-> java -> com.androidstudy.toolbarscrollviewexample 안에 있는 MainActivity, SignUpActivity 파일의 내용을 아래와 동일한지 확인해준다.
	① MainActivity 68번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/"  or "http://localhost:9003/")
	② SignUpActivity 60번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/" or "http://localhost:9003/")

 5-2) 그런다음 위쪽에 bar부분 start(▶)을 버튼을 클릭하여 구동시킨다.


6. ONECOIN 파일을 실행시키면 Header(NavBar) 커뮤니티 부분에 '자유게시판' 은 SpringBoot + React랑 연동되어있어서 
   FinalProject_3Team_ONECOIN_STS의 압축을 풀면 나오는 
     ONECOINSTS 파일의 src-> main -> webapp -> WEB-INF -> views ->include -> Header.jsp -> 162번째 줄 수정해줘야함!! (ex. "http://localhost:3000/" or "http://192.168.0.55:3000/" )
    
   












