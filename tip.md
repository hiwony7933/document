domain 지식 -> 업무 지식
Algorithm -> 업무에서 필요한 알고리즘을 처리하기가 어렵다 .


Service 에서 다 만들어서 repository에 넘겨주고 repository 에서는 단순 작업만 하게 하자. 파라미터 같은 처리 안됨. 

관점 지향 프로그램 AOP - interseptor 가로 챘다라는 의미로 

listener : 이벤트가 발생하면 동작
  ㄴ 웹 애플리케이션이 시작될때 종료될때 
  ㄴ 일반 유저가 접속했을 때와 접속해제했을 때 

클라이언트는 필요할때 만들면 되고 서버는 미리 만들어 두자 

POJO - 순수한 자바 클래스 (다른 프레임워크의 클래스로부터 상속받지 않은 객체) 
service, repository는 변형되면 안됨. 

상속 : super -> sub  슈퍼클래스가 바껴버리면 상속받은 클래스가 변해버리는 

JQuery 같은 서비스로 웹 페이지를 만드는데 사용하다가 JQuery가 변해버리면 웹페이지를 다 바꿔야 한다. 
ㄴ 사용하는데에 있어서 생각을 좀 해보자. 
ㄴ 서버쪽에서는 jQuery 사용은 하지말자고 한다. 



Spring 0220 

spring mvc project에서 설정파일 순서  
pom.xml -> web.xml -> root-context.xml -> appServlet.xml   
pom, web 파일명은 고정 그 외는 프레임워크에 따라 다른 이름이 될수 있다.   

Dao는 Service가 가져다가 사용한다.   
Service를 만들 때는 템플릿 메소드 패턴 사용  
인터페이스를 생성하고 메소드를 선언한 후 클래스에서 메소드를 구현   

css, js 이외 기타 자원의 경로 설정
출력되는 파일의 위치가 기준이 아니고 URL이 기준입니다. 


요청이 발생하면 Controller로 이동 
Service 메소드로 이동




http://www.bloter.net/archives/371735





```javascript
		// ajax 만들기 코드 
		//ajax 객체 만들기 
		request = new XMLHttpRequest();
		//요청 생성 
		request.open('GET', 'item2.json');
		//요청 전송
		request.send('');
		//요청에 대한 처리를 위한 콜백 메소드 등록
		request.onreadystatechange = function() {
			// 정상응답이 오면 
			if(request.readyState == 4 && request.status >= 200 && request.status < 300){
```



형상관리 - 변경사항을 관리 

형상관리 Tool - Git hub

Servlet : java 클래스에 HTML을 추가하는 방식, 첫번째 요청이 오면 컴파일을 해서 클래스를 만들고 인스턴스를 마들어서 이 인스턴스 1개를 가지고 모든 요청을 처리 

jsp : HTML 페이지에 Java 코드를 추가하는 방식, 요청이 올 때 마다 Servlet 클래스를 만들고 인스턴스를 마들어서 요청을 처리하고 삭제되빈다. 

Request : 클라이언트의 요청 , 요청객체
Response : 클라이언트의 요청에 대한 서버의 응답, 응답객체 

웹표준 : 누구나 동일한 콘텐츠를 사용할 수 있어야 한다. 
크로스 브라우징 : 모든 브라우저에서 동일한 콘텐츠를 사용할 수 있어야 한다. 
반응형 웹 디자인 : 화면 크기에 상관없이 동일한 콘텐츠를 사용할 수 있어야 한다. 

N-Screen : 디바이스 종류에 상관없이 동일한 콘텐츠를 사용할 수 있어야 한다. 

ajax : 비동기적으로 서버에서 데이터를 받아오는 자바스크립트 기술
	: 화면전체를 갱신하지 않고 데이터를 받아서 화면의 일부부만 갱신하는  기술 

Open API 이 표준 데이터 포맷
jSon : 자바 스크립트의 데이터 표현 방법
XML : 태그를 이용한 데이터 표현 방법 


Q/A 직군

White Box Test  : 내부 구조를 테스트, 반복문이나 조건문 등을 테스트

Black Box Test : 기능 테스트, 결과만 보는것, 입력이 주어지면 올바른 결과만 나왔는지만 테스트 


validation test(검승시험)

alpha test : 개발자의 장소에서 사용자가 테스트 

Beta test : 사용자이 장소에서 사용자가 테스트 


SQLMapper framework: SQL과 자바코드의 분리 - MyBatis 
ORM framework: 테이블과 클래스를 매핑, 테이블의 행과 객체를 매핑 - Hibernate 


-> SI 업계는 SQLMapper 솔루션 업체는 ORM

SI는 남들이 제작해달라고 하는 소프트웨어를 개발 - ERP(전사적 자원관리) 
Solution : 특정 문제를 해결하기 위한 소프트웨어 
	 비슷한 유형의 프로젝트를 여러 번 했기 때문에 솔루션을 개발 

삼성 5년, LG 3년 협력업체 알아볼때 기준 
솔루션 초입이 낮고.. 

Oracle 원하는  업체는 거의  SI

WebSocket  - web에서 연결형 통신(TCP)을 구현하기 위한 HTML5 API


Authentication : (인증) 로그인과 관련된 부분
Authroization : (인가) 사용권한 관련된 부분

DI(의존성 주입) : 내부에서 사용할 데이터를 외부에서 생성해서 대입받아서 사용

`@Autowired` 가 의존성 주입을 위한 어노테이션
	
	
개체 무결성 : primary key는 null이거나 중복될수 없다. 







면접 : 
거짓말 X 
어줍지 않게 말하지말것


캐글 3문제 - 한달에 한문제 -> 경험적으로 정리하고, 경험적으로 얘기할것 
실제 문제를 풀어라. 

머리로 하는것보다는 몸으로 느끼는것, 생각하는것이 손으로 나와야되는 정도

github 

code 출처는 명확하게






































