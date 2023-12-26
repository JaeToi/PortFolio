# Project

## 
< 프로젝트 소개 > 
One코인은 온라인 강의 제공을 위한 반응형 웹 사이트를 개발하기 위해   
기획되었습니다. 
이 프로젝트의 주요 의도는 다음과 같습니다.
One코인은 사람들에게 어디서나 언제나 접근 가능한 온라인 강의 플랫폼을 제공하기
위해 기획되었습니다. 이를 통해 지리적, 시간적 제약 없이 누구나 원하는 강의를
수강할 수 있게 됩니다. 다양한 주제와 분야의 강의를 제공함으로써 보통 설명으로
이해가 잘 가지 않아 어려움을 겪는 분들을 위해 디테일적인 부분을 강조하여
초심자들의 학습 욕구를 충족시키고자 합니다.



### 사용 Tool
![image](https://github.com/JaeToi/PortFolio/assets/95026188/2c84edbe-31e8-469e-8ab3-1436b98539f7)

### 구조도(use case diagram)
![image](https://github.com/JaeToi/PortFolio/assets/95026188/62c00aca-9d6b-42d7-9669-6570d59852dc)

### ERD(Entity Relationship Diagram)
![image](https://github.com/JaeToi/PortFolio/assets/95026188/97504205-2144-4096-8e99-2ceb0c4efc84)



-----------------------------------------------------------------------------------------------------


※ 참조 : 압축푸는순서는 상관없다. 

### DataBase sql 추가 
- Project_Finally_3Team_sql.sql 파일을 OracleDB에 복사후 Ctrl+A로 전체 선택 Ctrl+Enter로 입력한다.

### < Spring만으로 구현한 프로젝트 >
- 3_1)FinalProject_3Team_ONECOIN_STS.zip 파일의 압축을 푼다. ( 사용한 Tool : STS )
  - 1-1) src-> main -> webapp -> WEB-INF -> spring -> root.context.xml 파일에 DataBase의 아이디/비밀번호를 확인한다.
  - 1-1) ONECOIN_STS (오른쪽마우스)-> Run As -> Run on Server 클릭하여 서버를 구동시킨다.
 
☆☆☆ 참고사항 (확인해야할것들!!) ☆☆☆

1. 프로젝트 오른쪽마우스 -> Properties -> Deployment Assembly 에서 아래그림처럼 되어있는지 확인
![image](https://github.com/JaeToi/PortFolio/assets/95026188/49271594-3e8d-40b4-b3e0-47a43794e7fe)

2. 프로젝트 오른쪽마우스 -> Properties -> Java Build Path 에서 아래그림처럼 되어있는지 확인
![image](https://github.com/JaeToi/PortFolio/assets/95026188/0bb2f755-dfba-4f03-8b07-bb55f4c02541)

3. 프로젝트 오른쪽마우스 -> Properties -> Deployment Assembly 에서 JRE System Library가 jdk로 되어있는지 확인 (jre로 되어있으면 삭제후 jdk으로 고칠것!!)
![image](https://github.com/JaeToi/PortFolio/assets/95026188/9c220224-9243-464f-8a7c-ac10ba645db5)

    
---------------------------------------------------------------------------------------------------------------------------

### < React 및 SpringBoot로 구현한 프로젝트 >

 - 3_3)FinalProject_3Team_ONECOIN_ReactBackEnd 의 압축을 푼다. ( 사용한 Tool : STS )
	- src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
		- ① server.port = 9008
		- ② spring.datasource.username = one 
		- ③ spring.datasource.password = one
		- ③ spring.jpa.hibernate.ddl-auto = update
	- Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

  - 3_2)FinalProject_3Team_ONECOIN_ReactFrontEnd 의 압축을 푼다. ( 사용한 Tool : VS Code )
	  - 위 상단에 Terminal 클릭 New Terminal 클릭 후 하단 오른쪽에 + 버튼을 눌러 command Prompt(cmd)를 선택해준다
	  - 파일경로(cd..)를 찾아 들어간후 npm install 입력하여 module을 설치해준다.
	  - 설치가 끝나면 package.json 파일에 "proxy":"http://192.168.0.55:9008"  or "proxy":"http://localhost:9008"를 추가해준다.
	  - Terminal의 command Prompt(cmd)에서 npm start로 서버를 구동시켜준다.
---------------------------------------------------------------------------------------------------------------------------
   
### <Android Studio 및 SpringBoot로 구현한 프로젝트>

- 3_5)FinalProject_3Team_ONECOIN_Android_Backend 의 압축을 푼다. ( 사용한 Tool : STS )
	- src -> resources -> application.properties 파일을 클릭후 아래 사항을 확인해준다.
		- ① server.port = 9003
		- ② spring.datasource.username = one 
		- ③ spring.datasource.password = one
		- ③ spring.jpa.hibernate.ddl-auto = update 
	- Onecoin_SpringBoot_AndroidApp (오른쪽마우스) -> Run As -> Spring Boot App 클릭하여 서버를 구동시킨다.

- 3_4)FinalProject_3Team_ONECOIN_Android_Frontend 의 압축을 푼다. ( 사용한 Tool : Android Studio )
	- app-> java -> com.androidstudy.toolbarscrollviewexample 안에 있는 MainActivity, SignUpActivity 파일의 내용을 아래와 동일한지 확인해준다.
	- MainActivity 68번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/"  or "http://localhost:9003/")
	- SignUpActivity 60번째 줄 retrofit.baseUrl("http://192.168.0.55:9003/" or "http://localhost:9003/")

- 그런다음 위쪽에 bar부분 start(▶)을 버튼을 클릭하여 구동시킨다.
  
---------------------------------------------------------------------------------------------------------------------------

 - ONECOIN 파일을 실행시키면 Header(NavBar) 커뮤니티 부분에 '자유게시판' 은 SpringBoot + React랑 연동되어있어서 
      - 3_1)FinalProject_3Team_ONECOIN_STS의 압축을 풀면 나오는 ONECOINSTS 파일의 src-> main -> webapp -> WEB-INF -> views ->include -> Header.jsp -> 162번째 줄 수정해줘야함!! (ex. "http://localhost:3000/" or "http://192.168.0.55:3000/" )
    
   

