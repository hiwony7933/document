## Java Web Programming

* URL 요청이 왔을 때 Java Web Component가 그 요청을 받아서 Java를 이용해서 처리 한 후 결과를 HTML로 출력하는 것

##### 1.환경설정 
 1) JDK EE 버전을 설치

* JDK SE 버전과 WAS의 라이브러리를 이용해서도 가능
* JDK SE 버전과 Spring 라이브러리를 이용해서도 가능
* 최근에는 EE 버전을 설치하지 않고 SE 버전으로 사용하는 경우가 많음

 2) WAS(Web Application Server - Web Container)를 설치

* URL 요청이 오면 적절한 Java Web Component를 호출하고 Web Component가 리턴한 결과를 HTML로 변환해서 Web Server에 전달해주는 애플리케이션
* apache tomcat, zeus, IBM의 Web Logic 등 다양한 제품이 있음
* 국내에서는 apache tomcat이 많이 사용되고 공공기관 프로젝트에서는 zeus 그리고 금융권에서는 Web Logic을 사용하는 경우가 있음

 3) Web Programming이 가능한 IDE를 설치

* eclipse ee 버전 : STS(Spring 전용 Eclipse), 전자정부 프레임워크(공공기관 애플리케이션 개발 전용 Eclipse), 애니 프레임워크(삼성 애플리케이션 개발 전용 Eclipse) 등
* IntelliJ 상용 버전

 4) jdk se 1.8, tomcat 9.0, eclipse ee 버전을 설치

 5) 기타 프로그램

* 데이터베이스 연동을 하는 경우가 대부분이라서 데이터베이스 결과를 확인하기 위한 데이터베이스 접속 프로그램(DBeaver 설치)
* 출력 결과를 확인하기 위한 웹 브라우저(Chrome 설치) : 프론트 앤드를 고려하는 경우에는 IE 도 설치

##### 2.Java Web Component
 1) HttpServlet

* URL을 이용해서 호출할 수 있는 Java Class기본적으로 자바 코드로 작성하고 HTML을 만들고자 할 때는 출력 스트림을 이용해서 작성
* 처음 호출될 때 컴파일하고 class를 만든 후 instance를 만들어서 사용
* 한 번 인스턴스를 만들면 다시 만들지 않음
* 수정을 하면 서버를 다시 시작해서 다시 컴파일을 해야 합니다.

 2) JSP(Java Server Pages)

* URL을 이용해서 호출할 수 있는 Java Class
* 호출하면 HttpServlet 클래스로 변환 된 후 인스턴스를 만들어서 처리
* 기본적으로 HTML 과 태그로 작성하고 자바 코드를 사용하고자 할 때 별도의 블럭을 만들어서 작성
* 요청이 올 때 마다 컴파일하고 클래스 만들고 인스턴스 만들고 처리하고 삭제됩니다.
* jsp는 수정을 한 경우 서버를 다시 시작할 필요 없고 새로 고침만 하면 됩니다.

##### 3.Model1 과 Model2

* Web Programming에서 등장하는 용어인데 asp.net 과 java에서만 사용
* Model1 은 처리와 출력을 모두 jsp 파일에서 수행하는 형태인데 쉽게 작성이 가능하지만 유지보수가 어려움
* Model2 는 처리는 HttpServlet 을 통해서 수행하고 출력은 jsp에서 하는 방식으로 작성은 어렵지만 유지보수가 쉽다.
* 최근에는 Front End 와 Back End 구분을 하는 편이라서 Model2를 대부분 사용

##### 4.MVC(Model View Controller) 패턴

* 역할 별로 분리를 해서 프로그래밍하는 패턴
* 유지보수의 편리성 때문 
  1) Model: 작업을 처리해서 결과를 만드는 부분
  2) View: 작업의 결과를 출력하는 부분
  3) Controller: 사용자의 요청이 오면 적절할 Model을 호출하고 그 결과를 View에 전달해서 출력하도록 해주는 부분
  4) 최근에는 View를 직접 생성하지 않고 Controller에서 데이터만 리턴하는 경우도 있음
* csv, excel, pdf, xml, json 등의 형식
* csv, excel 은 변경이 없는 오래된 데이터
* pdf는 보고서
* xml, json 은 수시로 변경이 발생하는 데이터

##### 5.Eclipse 설정
 1) 소스 코드와 생성되는 텍스트 파일들의 인코딩을 UTF-8로 설정(Windows에서만 수행)

* [Window] - [Preferences]에서 [General] - [Workspace] 탭에서 오른쪽의 창에서 Text file encoding을 UTF-8로 설정

 2) CSS, HTML, jsp 파일의 인코딩을 UTF-8로 설정

* [Window] - [Preferences]에서 [Web] 탭에서 하나씩 선택해서 수정(Windows에서만 수행)

 3) [Window] - [Preferences]에서 [General] - [WebBrowser] 탭에서 출력 결과를 확인할 웹 브라우저를 선택

*  HTML5를 사용하는 경우에는 Chrome 이나 Firefox로 설정

##### 6.Eclipse에서 Java Web Project 생성

* Dynamic Web Project 생성
* web.xml 파일을 생성하도록 프로젝트를 설정

 1) 첫화면에서 프로젝트 이름과 저장 위치를 선택하고 Next
 2) 두번째 화면에 나오는 디렉토리는 컴파일을 해서 클래스를 저장할 디렉토리를 설정
* src 디렉토리는 컴파일을 수행할 java 파일의 위치이고 classes 디렉토리는 컴파일이 끝나고 만들어진 class 파일이 저장될 위치입니다.
* java 파일은 반드시 src 디렉토리 안에 만들어져야 합니다.
* src 이외의 디렉토리에 저장된 java 파일은 컴파일하지 않습니다.
  3) 세번째 나오는 화면에 보여지는 ContextRoot 는 프로젝트가 실행될 때의 도메인이고 ContentDirectory는 화면에 보여져야 하는 파일(html, jsp)의 디렉토리입니다.
* 체크박스는 web.xml 파일을 만들어서 포함시켜 줄 지 여부를 체크하는 것으로 체크하는 것을 권장

##### 7.프로젝트 생성 후 디렉토리 구조
 1) Java Resources

* src:Java 파일이 위치해야 하는 디렉토리

 2) WebContent(webapp)

* html, css, javascript, jsp 및 각종 리소스 파일(이미지, 사운드 등)이 위치해야 하는 경로
* META-INF: context.xml(웹 자원 설정) 파일이 위치해야 하는 디렉토리
* WEB-INF: web.xml(웹 프로젝트 설정) 파일이 위치해야 하는 디렉토리
  /lib: 외부 라이브러리가 위치해야 하는 디렉토리
  /classes: src에서 컴파일된 파일이 위치해야 하는 디렉토리
              직접 미리 생성해도 되지만 실행하면 자동으로 생성되는 디렉토리

##### 8.설정 파일
 1) server.xml: 프로젝트에는 없고 실행을 한번하고나면 Server 디렉토리에 생성되는 파일
* WAS 설정 파일 - 개발자는 거의 작업을 하지 않는데 was를 설치하고 실행이 잘 안될 때 수정
* -1로 설정된 포트를 양수로 변경해야 하고
* 오라클과 톰캣이 같이 설치된 경우 톰캣의 실행 포트를 8080에서 다른 포트로 변경해야 합니다.

 2) web.xml: 프로젝트 설정 파일
* 프로젝트에 이 파일이 없으면 Server 디렉토리에 있는 web.xml 파일의 내용을 이용해서 프로젝트가 설정 됩니다.

 3) context.xml: 외부 자원에 대한 정보를 설정을 위한 파일

##### 9.프로젝트의 WebContent 디렉토리에 index.html 파일을 생성하고 프로젝트를 실행

* 프로젝트를 선택(html 이나 jsp 파일을 선택해도 가능)하고 마우스 오른쪽을 클릭해서 [Run As] - [Run on Server]를 선택
* 처음 실행한 경우에는 어떤 WAS를 이용해서 실행할 것인지 선택하는 부분이 나옵니다.
  [Apache Tomcat 9.0]을 선택하고 톰캣이 설치된 디렉토리를 지정해야 합니다.
* 실행이 안되면 Servers 디렉토리의 server.xml 파일을 열어서 shutdown 포트가 -1 이면 양수로 수정하고 Connector 태그의 port가 8080이고 오라클이 설치된 경우이면 8080 대신에 다른 포트 번호를 사용
* 실행을 하면 index.html 파일이 있으면 이 파일의 내용이 출력되고 없으면 404에러가 발생하는데 이 때는 주소 뒤에 작성한 html 이나 jsp 파일의 경로를 입력하면 됩니다.

##### 10. jsp 생성
* WebContent 디렉토리에 존재
* spring 과 같은 프레임워크를 사용하기 전에는 WEB-INF 나 META-INF에 있어서는 안됨
* 마우스 오른쪽을 클릭해서 jsp 파일을 생성하면 됩니다.

##### 11.jsp

* html 문서 안에 자바코드를 삽입하는 구조
* url에 의해 호출되면 그 때 내용을 컴파일을 해서 HttpServlet 클래스를 상속받은 클래스를 만들고 인스턴스를 생성해서 요청을 처리하고 그 결과를 WAS가 html로 변환
* 내용을 수정한 경우 새로고침만 하면 됩니다.
* jsp 파일을 만든 경우나 HttpServlet 파일을 생성했을 때 에러표시가 나는데 실행과는 상관이 없습니다.
  * 이 에러 표시를 제거하고자 할 때는 Tomcat이 설치된 디렉토리의 lib 디렉토리에 있는 servlet-api.jar 파일을 WebContent/WEB-INF/lib 디렉토리에 복사해주면 됩니다.

##### 12.HttpServlet

* URL로 호출할 수 있는 자바 클래스
* 자바 코드 안에 html을 삽입할 수 있는 구조
* HttpServlet 클래스로 부터 상속받는 클래스로 만들고 URL과 매핑을 시켜서 생성
* 처음 호출을 하게되면 컴파일을 하고 인스턴스를 만들고 이 인스턴스를 계속 사용
* 내용을 수정하면 웹 애플리케이션을 다시 실행시켜야 합니다.

##### 13.HttpServlet 과 jsp

* 공통점은 URL을 이용해서 호출한다는 것과 인스턴스 생성을 직접 하지 않는다는 것
* 이 2가지는 WAS가 필요할 때 인스턴스를 생성
* 다른 점은 서블릿은 src 디렉토리에 만들어야 하고 jsp는 WebContent에 만들어야 한다는 것과 자바에 html을 삽입하는냐 아니면 html에 자바코드를 삽입하느냐 하는 것입니다. 실행원리도 다름

### jsp 기본 문법

##### 1.디렉티브(Directive)

* jsp 파일에 대한 설정
* <%@ 으로 시작
* <%@ 디렉티브이름 속성="값" 속성="값"... %> 형식으로 작성

 1) 종류

* page 디렉티브: 페이지에 대한 설정
* taglib 디렉티브: 태그 라이브러리에 대한 설정
* include 디렉티브: 다른 jsp 파일을 포함시키고자 하는 경우 사용

 2) page 디렉티브

* contentType: jsp 페이지가 변환될 문서의 타입을 설정하는 것으로 기본값은 text/html
  json 이나 xml 등을 출력하고자 하면 이 부분을 수정
* import: 패키지 이름을 줄여쓰기 위해서 사용
* session: 세션 사용 여부를 설정하는 것으로 기본값은 true
* errorPage: 에러가 발생했을 때 보여질 페이지를 설정
* isErrorPage: 스스가 에러가 발생했을 때 보여지는 페이지인지 설정하는 것인데 이 설정을 true로 설정하면 exception 객체를 사용할 수 있음
* pageEncoding: 현재 문서의 인코딩 방식
* isELIgnored: EL 사용여부를 설정
* trimDirectiveWhitespaces: 공백 제거 여부를 설정하는 기본값은 false

##### 2.스크립트 요소

* Model2 에서는 사용하지 않음

 1) 자바코드
<% 자바코드 %>

 2) 자바 내용을 출력
<%= 데이터 %>

 3) static 메소드나 변수 선언
<%! 함수나 변수 선언 %>

 4) jsp 파일에 java 코드나 java의 내용을 출력하는 부분이 있으면 이 코드가 먼저 수행되고 그 다음 html의 내용이 수행됩니다.

* java 내용이 html 코드보다 아래 있더라도 먼저 실행됩니다.

##### 3.jsp 주석
<%--내용--%>

* html 코드에서는 html 주석을 javascript에서는 javascript의 주석을 css 부분에서는 css의 주석을 java 코드에서는 java 의 주석을 사용하므로 잘 사용하지는 않습니다.

* java 의 주석 : // 와 /* */
* html 주석 : <!-- 주석 -->
* css 주석 : /* */
* javascript 주석 : java 주석과 동일
* python의 주석 : #

### 내장 객체

* jsp 파일을 만들면 처음부터 제공되는 객체
* servlet에서는 doGet이나 doPost의 전달되는 매개변수인 request 와 response로 생성해서 사용합니다.

##### 1.종류

| 이름                                | 내용                                                  |
| ----------------------------------- | ----------------------------------------------------- |
| **1) HttpServletRequest request**   | **클라이언트의 요청 정보를 가지고 있는 객체**         |
| **2) HttpServletResponse response** | **클라이언트에 출력할 정보를 가지고 있는 객체**       |
| 3) JSPWriter out                    | html 출력 객체                                        |
| **4) HttpSession session**          | **접속한 브라우저에 대한 정보를 저장할 수 있는 객체** |
| **5) ServletContext application**   | **웹 애플리케이션 객체 - 1개만 생성**                 |
| 6) ServletConfig config             | jsp 구성 정보를 저장한 객체                           |
| 7) PageContext pageContext          | 현재 페이지의 데이터를 저장할 수 있는 객체            |
| 8) Object page                      | jsp 페이지로부터 생성된 서블릿                        |
| 9) Throwable exception              | 예외가 발생했을 때 예외 정보를 저장할 객체            |

##### 2.request 객체

* jsp에서는 제공되고 Servlet에서는 doGet 과 doPost 메소드의 첫번째 매개변수
* 클라이언트의 정보를 저장한 내장 객체

 1) 주요 메소드

| 이름                    | 내용                                                         |
| ----------------------- | ------------------------------------------------------------ |
| String getRemoteAddr()  | 클라이언트의 IP를 리턴(로컬에서 접속하면 127.0.0.1 이나 0::0::0::0::0::0::0::1 ) 어떤 IP로 접속했는지 확인 할수 있다. |
| String getMethod()      | 요청 방식을 문자열로 리턴                                    |
| String getRequestURI()  | 클라이언트의 전체 요청 경로 (클라이언트가 접속해서 움직이는 경로는 파일에 저장해두것이 좋습니다. 이 데이터를 분석해서 UI 개선) |
| String getContextPath() | 컨텍스트 경로 - 도메인                                       |
| String getQueryString() | 클라이언트가 전송한 파라미터 문자열                          |

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>
	<h3>접속한 클라이언트의 IP: <%=request.getRemoteAddr() %></h3>
	<h3>컨텍스트 경로: <%=request.getContextPath() %></h3>
	<h3>전체요청 경로: <%=request.getRequestURI() %></h3>
	<%
	String requestURI = request.getRequestURI();
	String contextPath = request.getContextPath();
	//위에서 requestURI에서 contextPath를 제외한 부분 생성
	//문자열 잘라내기 - 기호(split) 또는 위치(substring)
	String command = requestURI.substring(contextPath.length()); %>
<!-- Controller 패턴을 이용할 때 이렇게 잘라서 라우팅을 합니다. -->
<p>전체요청경로에서 contextPath를 제외한 부분:<%=command %></p> 
</body>
</html>
```

 2) parameter 처리

* parameter: 클라이언트가 서버에게 전송하는 데이터

* 파라미터 전송방식

**get** 

* 파라미터를 URL 뒤에 ?이름=값&이름=값... 형식으로 붙여서 전송하는 방식
* 자동 재 전송 기능이 있음
* 값의 길이에 제한이 있음 - 255자로 제한
* 보안기능이 없음 - 파라미터가 브라우저에 노출

**post**

* 파라미터를 Header에 숨겨서 전송하는 방식 

* 값의 길이에 제한이 없고 보안기능도 있음

* 자동 재 전송 기능이 없음

* put 과 delete도 같은 방식인데 작업의 종류에 따라 구분하기 위해서 post는 삽입에서 put은 수정에서 delete는 삭제 작업에 이용하는 것을 권장

* **예전 브라우저들이 post 만 지원하기 때문에 아직도 put 과 delete보다는 post로 대부분 처리**

* **전송할 때 비밀번호, textarea, file 이 있는 경우는 반드시 post를 사용**

* 최근에는 form 의 데이터는 거의 무조건 post로 전송하는 것을 권장

* 검색어 입력 form의 경우 작업 자체가 검색이 목적이기 때문에 이 경우만 예외적으로 get 방식으로 전송

**put**

* 파라미터를 Header에 숨겨서 전송하는 방식

**delete** 

* 파라미터를 Header에 숨겨서 전송하는 방식

> 호환성 문제로 put, delete 가 안되는 경우가 발생하여 버전으르 낮추는 방법도 고민해보자
> 최신버전이 능사가 아니다. 나는 볼수있겠지만 다른사람들은??



### 파라미터 생성
 * URL 뒤에 ?를 추가하고 직접 작성 : 검색을 한 후 상세보기를 할 때 대부분 이방법, get 방식으로만 전송 가능 - 파라미터를 입력받지 않고자 할 때 사용

 * form을 만들고 그 안에 name 속성을 부여해서 전송
 * form 안에 입력객체를 만들었더라도 name 속성을 부여하지 않으면 전송이 안됩니다.

> ajax에서는 파라미터를 별도로 만들어서 전송

### 서버에서 파라미터 읽기
 `String request.getParameter(String name) :` 

* name에 해당하는 파라미터 값을 문자열로 리턴, 없는 name이면 null이고 name은 있는데 입력을 하지 않으면 ""

`String[] request.getParameterValues(String name) : `
* name에 해당하는 파라미터 값을 문자열 배열로 리턴하는데 name이 없으면 null, 체크박스나 select는 여러 개 선택이 가능하기 때문에 여러 개 선택한 경우에는 배열로 받아야 합니다.

* 파라미터 인코딩 : 파라미터에 한글이 있는 경우

| 방식      | 처리        | 내용                                                         |
| --------- | ----------- | ------------------------------------------------------------ |
| get 방식  | WAS         | tomcat 8.0 이상을 사용하면 할 필요가 없습니다.               |
| post 방식 | 서버쪽 코드 | 파라미터를 읽기 전에 request.setCharacterEncoding("utf-8"); 이 코드를 먼저 호출해서 인코딩 방식을 변경해야 합니다. |

그렇지 않으면 한글 파라미터는 깨지게 됩니다.

###  파라미터 처리

* parameter: 클라이언트에서 서버로 넘기는 데이터
* argument(매개변수): 함수를 호출할 때 넘겨주는 데이터

##### 1.파라미터를 만들어주는 방법
 1) URL 뒤에 ?를 하고 이름 과 값을 기재하는 방법

* 여러 개가 있는 경우는 &로 구분
* 검색된 결과에서 제목 등을 클릭해서 제목에 해당하는 데이터를 가져오는 경우 - 상세보기에 많이 이용

 2) form에 name 속성을 갖는 입력 객체를 만드는 방법

* 데이터를 사용자로부터 입력받아서 전달하는 것이 목적

3) ajax 나 웹에 요청을 하는 애플리케이션에서 별도로 만들어서 전달하는 방법

* html을 요청하는 것이 아니고 데이터가 필요한 경우

##### 2.html 페이지에 form 만들기 

```javascript
<form method="" action="" enctype="" id="">
</form>
```

 **1) id : 자바스크립트에서 사용하기 위해서 설정**

* **자바스크립트에서 form을 사용할 의도가 없다면 생략 가능**

 **2) action : 폼의 데이터를 전송받을 서버의 url**

* 생략하면 현재 URL이 그대로 설정**

 **3) method : 파라미터 전송 방식**

* **생략하면 get**
* **post 나 put, delete를 사용할 때는 설정을 해야 합니다.**

 **4) enctype : 전송방법**

* **분할 전송을 하고자 할 때는 multipart/form-data 라고 설정**
* **분할 전송을 해야 하는 경우는 파일을 업로드 해야 하는 경우**



#### 실습1

1.Dynamic Web Project 생성(web.xml 파일을 포함하도록 설정)

2.tomcat 디렉토리 안의 lib 디렉토리에서 servlet-api.jar 파일을 프로젝트의 WebContent/WEB-INF/lib 디렉토리에 복사

* jsp 나 servlet을 생성해서 사용할 때 에러 표시를 없애기 위해서

3.프로젝트의 메인 페이지로 사용할 index.html을 WebContent 디렉토리에 만들고 작성

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java web 2일차</title>
</head>
<body>
	<a href="./param/paraminput.jsp">파라미터 입력</a><br/>
</body>
</html>
```

4.WebContent 디렉토리에 param 디렉토리를 생성하고 paraminput.jsp 파일을 만들어서 작성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 만들기</title>
</head>
<body>
	<!-- 링크에 파라미터 만들기 : 직접 파라미터 입력-->
	<a href="./process.jsp?query=korea&name=park">대한민국</a><br/>
	<!-- form을 이용한 파라미터 만들기 -->
	<h1>GET 방식 전송</h1>
	<form method="get" action="get.jsp">
		이름:<input type="text" name="name"/><br/>
		취미:<input type="checkbox" name="hobby" value="game">게임
		<input type="checkbox" name="hobby" value="reading">독서
		<input type="checkbox" name="hobby" value="billiard">당구
		<br />
		나이:<select name="age">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select>
		<br/>
		<input type="submit" value="전송"/>
	</form>
	<h1>POST 방식 전송</h1>
	<form method="post" action="post.jsp">
		비밀번호:<input type="password" name="pw" /><br/>
		하고싶은 이야기:<textarea name="words" rows="5" cols="20"></textarea>
		<br />
		<input type="submit" value="전송"/>
	</form>
</body>
</html>
```

5.project 실행해서 index.html에서 링크를 눌러서 이동되는지 확인


#### 서버 페이지에서 파라미터 읽기

* String request.getParameter(String name) : name 에 해당하는 파라미터를 문자열로 리턴
* String [] request.getParameterValues(String name) : name에 해당하는 파라미터를 문자열 배열로 리턴
  체크박스나 List처럼 여러 개를 선택할 수 있는 경우에 사용

#### 실습

1.param 디렉토리에 process.jsp 파일을 만들고 작성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리 페이지</title>
</head>
<body>
	<%
		//파라미터 읽기 - 없는 name을 사용하면 null 이 리턴되고 입력을 안하면 ""
		String query = request.getParameter("query");
		String name = request.getParameter("name");
	%>
	<p>query:<%=query%></p>
	<p>name:<%=name%></p>
</body>
</html>
```

2.param 디렉토리에 get.jsp 파일을 만들고 파라미터 읽어서 출력하는 코드를 작성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get 방식 파라미터 읽기</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		//hobby는 체크박스인데 getParameter로 읽으면 첫번째 선택된 항목 하나만 넘어옵니다.
		//이런 경우에는 getParameterValues로 읽어서 배열로 리턴받아야 합니다.
		//String hobby = request.getParameter("hobby");
		String [] hobby = request.getParameterValues("hobby");
		String age = request.getParameter("age");
	%>
	<p>name:<%=name %></p>
	<!-- 배열은 바로 출력하면 안되고 반복문을 이용해서 출력 -->
	<p>hobby:<%for(String imsi : hobby){out.write(imsi + "\t");} %></p>
	<p>age:<%=age %></p>
</body>
</html>
```

3.param 디렉토리에 post.jsp 파일을 만들고 파라미터 읽는 코드를 작성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리</title>
</head>
<body>
	<%
		String pw = request.getParameter("pw");
		String words = request.getParameter("words");
	%>
	<p>비밀번호:<%=pw %></p>
	<p>하고싶은 이야기:<%=words %></p>
</body>
</html>
```

### 파라미터 한글 처리

1.파라미터를 만들 때 직접 작성하는 경우 한글이 있으면 인코딩해서 붙여야 합니다.

* ajax 나 애플리케이션에서 요청할 때는 한글이 깨지게 됩니다.

2.get 방식의 파라미터를 처리할 때 인코딩은 WAS가 처리

* Tomcat 의 경우 8.0 이상 버전이면 utf-8로 처리
* 8.0보다 낮은 버전이면 한글 인코딩 처리 코드를 직접 삽입해야 합니다.
  Connector 태그에 URIEncoding="utf-8" 을 입력해주어야 합니다.

3.post 방식의 파라미터를 처리할 때 인코딩은 서버의 코드가 수행

* 파라미터 읽기 전에 request.setCharacterEncoding("utf-8");  호출해서 인코딩 방식을 변경해주어야 합니다.

#### 실습

post.jsp 파일 수정

```jsp
	<%
		//파라미터 인코딩 설정
		request.setCharacterEncoding("utf-8");
		String pw = request.getParameter("pw");
		String words = request.getParameter("words");
	%>
	<p>pw : <%=pw %></p>
	<p>words : <%=words %></p>
```

* 서버에서 처리하는 부분을 잘 만들어서 어디에서든지 동일한 요청은 동일한 URL을 갖고 처리할 수 있도록 하자는 것이 Restful API의 가장 큰 목적입니다.

#### 클라이언트의 헤더(header)읽기

* header: 클라이언트가 서버에게 요청을 할 때 파라미터 이외의 데이터가 필요한 경우 숨겨서 전송하기 위해서 사용

  * post 방식으로 전송을 하면 파라미터가 header에 숨겨져서 전송됩니다.

  * Open API

    (데이터나 라이브러리를 가진 곳에서 데이터나 라이브러리를 다운로드 받아서 사용할 수 있도록 제공하는 것)에서 예전에는 key를 발급해서 key를 파라미터 형태로 전송하도록 했는데 이 방식을 이용하면 URL에 key가 노출됩니다.
    최근에는 key를 header에 숨겨서 전송하도록 하는 방식이 사용이 됩니다.
    우리나라 공공 데이터 Open API는 아직도 URL에 key 값을 입력하는 구조이고 다른 곳은 대부분 key를 header에 숨기는 방식을 이용합니다.
    Open API가 무료로 데이터를 사용하도록 하기는 하지만 어떤 유저가 얼만큼의 데이터나 라이브러리를 사용하는지 파악하고 제한을 가하기 위해서 key를 발급합니다. 

1.읽는 메소드
* String request.getHeader(String name) : 이름에 해당하는 헤더의 값을 문자열로 리턴
* long request.getDateHeader(String name) : 이름에 해당하는 헤더의 값을 epoch time에 해당하는 정수로 리턴

#### response 객체
* 클라이언트의 출력을 만들어주는 객체로 응답 객체라고 합니다.
* jsp 파일에서는 response 라는 이름으로 제공되고 servlet에서는 doGet 메소드와 doPost 메소드의 2번째 매개변수입니다.

1.헤더 설정 메소드
```
void addDateHeader(String name, long date)
void addHeader(String name, String value)
void addIntHeader(String name, int value)
void setDateHeader(String name, long date)
void setHeader(String name, String value)
void setIntHeader(String name, int value)
```
2.캐시 만료 날짜 설정
* 현재 페이지를 읽어서 브라우저에 저장하고 있다가 다음에 요청하면 브라우저에 있는 페이지를 읽도록 해주는 기능이 캐싱입니다.
* 캐싱을 하고자 할 때는 Expires 라는 헤더를 추가하고 1970년1월1일 자정 이후의 시간을 1/1000 초 단위로 설정하면 됩니다.
```
//현재 페이지를 5일 동안 캐싱
int long = System.currentTimeMillis();
response.setDateHeader("Expires", long + 5*24*60*60*1000);
```
> 예전에는 네트워크 사정이 별로 좋지 못했기 때문에 캐싱 기능을 많이 이용

* 캐싱을 삭제 : 브라우저 마다 방법이 달라서 4개의 코드를 모두 작성해야 합니다.
```
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Expires", 1L);
```


3.sendRedirect(String url)
* url로 리다이렉트

* 리다이렉트는 현재까지 요청 흐름을 끝내고 새로운 요청을 만들어서 url로 이동하는 것
  브라우저 창의 URL이 변경되고 request 와 response 객체가 새로 만들어 집니다.
  리다이렉트는 모든 URL로 이동이 가능
  새로고침을 하면 결과만 다시 출력

  이와 반대로 현재 요청 흐름을 유지하고 url로 이동하는 것을 forwarding 이라고 합니다.
  forwarding을 하게되면 URL이 변경되지 않고 request 와 response도 계속 유지
  자신의 도메인 내에서만 이동이 가능
  새로고침을 하면 서버에 다시 요청을 해서 처리를 하고 결과를 다시 출력

#### out 객체
* html 출력을 위한 객체
* jsp에서는 처음부터 제공이 되고 servlet에서는 response.getWriter()를 호출해서 생성
* Model1(jsp에서 처리와 출력을 모두 수행) 에서는 Model2(처리는 서블릿과 자바가 수행하고 출력만 jsp가 담당 - EL 과 JSTL을 이용해서 출력)에서는 중요하지 않음
* 출력 스트림이므로 PrintWriter 클래스의 메소드를 사용해서 출력

#### 실습
1.index.jsp 파일에 실습 파일 링크 설정
```jsp
<a href="./out/out.jsp">out 객체 이용</a><br/>
```
2.WebContent 디렉토리에 out 디렉토리를 생성하고 out.jsp 파일을 만들어서 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("<h2>out을 이용한 출력</h2>");
		out.println("<p>나이<select name='age'>");
		//<option value=1>1</option>
		for(int i=1; i<100; i=i+1){
			out.println("<option value=" + i + ">" + i + "</option>");
		}
		out.println("</select></p>");
	%>
	<div id="disp"></div>
	<script>
		//스크립트는 소스보기를 하면 코드 확인 가능 - 보안이 취약
		//java 코드는 소스보기를 하면 결과만 보이지 소스 코드가 보이지 않음 - 보안이 스크립트보다 우수
		var disp = document.getElementById("disp");
		var html = "<select name='year'>";
		for(var i=1900; i<2021; i=i+1){
			html = html + "<option value=" + i + ">" + i + "</option>";
		}
		html = html + "</select>";
		disp.innerHTML = html;
	</script>
</body>
</html>
```


#### pageContext
* jsp 페이지 1개와 매칭이 되는 객체
* 이 객체는 다른 내장 객체를 가져와서 사용할 수 있도록 해주는 메소드를 소유
* request 객체를 가져와서 사용하고자 하면 HttpServletRequest request = pageContext.getRequest();

#### web.xml
* 반드시 WebContent(webapp)/WEB-INF/ 디렉토리에 존재해야 하는 웹 애플리케이션 설정 파일
* 웹 서버가 구동될 때 자신의 설정 파일을 읽고 그 다음 웹 애플리케이션을 실행할 때 가장 먼저 읽어내는 설정 파일
이 파일이 프로젝트 내에 없으면 서버 디렉토리에서 파일을 찾아서 읽습니다.
* 설정 내용
1.시작 페이지(welcome file)
2.에러 페이지
3.서블릿, 필터, 리스너 설정
4.세션
5.초기화 파라미터 정보

시작 페이지 설정 : 맨 위에 있는 파일을 찾아보고 있으면 출력하고 없으면 그 아래 파일을 찾아봅니다.
```xml
<welcome-file-list>
    <welcome-file>index.html</welcome-file>
    <welcome-file>index.htm</welcome-file>
    <welcome-file>index.jsp</welcome-file>
    <welcome-file>default.html</welcome-file>
    <welcome-file>default.htm</welcome-file>
    <welcome-file>default.jsp</welcome-file>
  </welcome-file-list>
```
초기화 파라미터 설정
```xml
<context-param>
	<param-name>파라미터이름</param-name>
	<param-value>파라미터값</param-value>
</context-param>
```
> **웹 애플리케이션을 시작할 때 읽을 수 있는 파라미터**

> 어떤 데이터가 처음 한 번 읽으면 애플리케이션내에서는 다시는 변하지 않는 경우 그리고 이 데이터는 애플리케이션이 실행되는 환경마다 변해야 하는 경우가 있습니다.
> 대표적인 데이터가 데이터베이스 URL 이나 id 또는 password 같은 데이터입니다.
> 개발환경과 운영환경이 다른 경우 개발환경에서 사용하는 데이터베이스 URL은 로컬이 될 가능성이 높고 실제 개발이 끝나고 운영을 하는 경우에는 로컬이 아니고 실제 데이터베이스 URL로 변경이 되어야 합니다.
> 이런 데이터를 자바 코드안에 입력해서 사용하면 개발이 끝나고 운영환경으로 이행할 때 자바코드를 수정해서 컴파일을 다시하고 빌드를 다시해서 운영해야 합니다.
> 컴파일을 다시 하면 예기치 않은 오류가 발생할 수 있습니다.
> 이런 경우에는 데이터베이스 URL을 파일이나 데이터베이스에 기록해두고 불러와서 사용하는 형태로 만들어야 이행을 할 때 소스 코드를 수정하지 않습니다.
> 그 방법 중의 하나로 web.xml 파일의 초기화 파라미터를 이용합니다.

#### application 객체
* 웹 애플리케이션이 매핑이 되는 객체
* 웹 애플리케이션 전체에 1개만 생성됩니다.

1.초기화 파라미터 읽어내기
* String getInitParameter(String name) : web.xml 파일에 만든 context-param 중에서 name에 해당하는 value를 리턴

2.logs 디렉토리에 만들어진 오늘 날짜에 해당하는 log 파일에 기록
* void log(String msg)

3.프로젝트 내의 존재하는 경로를 절대 경로 변경해주는 메소드
* String getRealPath(String 프로젝트 내의 경로) : servlet 3.0 아래 버전에는 이 메소드가 없습니다. 이 경우는 request.getRealPath(String 프로젝트 내의 경로) 이용

4.application 객체는 jsp 페이지에서는 처음부터 존재하고 servlet 에서는 request.getServletContext()로 찾아와야 합니다.


#### 초기화 파라미터 읽기 실습
1.초기화 파라미터 생성 - web.xml 파일에서 작성
```xml
<!-- 초기화 파라미터 -->
  <context-param>
  	<param-name>dburl</param-name>
  	<param-value>211.183.6.60:1521/xe</param-value>
  </context-param>
```
2.index.html 파일에 링크를 설정
```
<a href="./app/application.jsp">application 객체</a><br/>
```
3.WebContent 디렉토리에 app 디렉토리를 만들고 application.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//초기화 파라미터 읽기
		String url = application.getInitParameter("dburl");
		out.println("<h3>초기화 파라미터 url:" + url + "</h3>");
		//프로젝트 내의 경로의 절대 경로를 확인
		//파일을 업로드할 때나 특정 디렉토리에 파일을 생성할 때는 절대 경로가 필요
		//현재 프로젝트가 실행되고 있는 디렉토리를 확인하고자 할 때 사용해도 됩니다.
		String path = application.getRealPath("/app");
		out.println("<h3>app의 절대경로:" + path + "</h3>");
	%>
</body>
</html>
```

4.html 이나 jsp만 수정한 것이 아니고 web.xml 도 수정했기 때문에 웹 애플리케이션을 다시 실행시켜야 적용이 됩니다.

#### 웹 프로그래밍에서의 페이지 이동
1.클라이언트 페이지(html, jsp)에서 서버에게 요청
 1) 태그를 이용하는 방법
```
<a href="서버 URL">텍스트 또는 이미지</a>

<form action="서버 URL">
</form>
```

 2) 스크립트를 이용하는 방법
```
location.href = "서버 URL";
```
 3) ajax 를 이용하는 방법
* 1번과 2번은 처리를 해서 결과 페이지로 이동하고자 할 때 주로 이용하고 ajax는 데이터만 받아오고자 할 때 주로 이용

2.서버가 요청을 처리하고 결과 페이지로 이동하도록 하는 방법
 1) forwarding
* 결과 페이지로 이동할 때 요청한 URL을 그대로 가지고 가는 방법으로 요청 흐름이 이어지는 형태로 request 와 reponse 객체가 계속 유지가 됩니다.
* 결과 페이지에서 새로 고침을 하게되면 서버의 처리가 다시 수행됩니다.
* jsp 태그를 이용하는 방법 - 전자정부 프레임워크에서 시작 페이지 이동
```
<jsp:forward page="포워딩할 페이지 경로" />
```
* java 코드를 이용하는 방법 
```
RequestDispatcher ? = request.getRequestDispatcher("포워딩 페이지 경로");
?.forward(request객체, response객체);
```
 2) redirect
* 결과 페이지로 이동할 때 요청 URL은 버리고 결과 페이지의 URL을 가지고 가는 방법으로 요청 흐름이 끊어지고 새로운 요청 흐름을 만드는 형태로 request 와 response 객체가 새로 만들어 집니다.
* 결과 페이지에서 새로고침을 하게되면 결과 페이지만 다시 출력이 됩니다.
* 리다이렉트 하는 방법
```
response.sendRedirect("리다이렉트할 URL");
```
 3) 어떻게 이동할 것인가?
* 삽입, 삭제, 갱신 작업을 해야 하는 경우는 반드시 리다이렉트로 결과 페이지로 이동
* 로그인 과 로그아웃 처리도 리다이렉트 
* 새로 고침을 했을 때 이전 작업을 다시 수행하면 안되는 경우는 반드시 리다이렉트
단순 페이지 이동이나 검색된 결과를 보여줄 때는 포워딩을 합니다.
검색된 결과를 새로고침을 했을 때 결과만 보여주고자 할 때는 리다이렉트를 해도 됩니다.
포워딩은 서버에서 다시 처리를 하고 결과를 새로 가져와서 출력을 하기 때문에 트래픽이 많이 발생 합니다.

#### 실습: 포워딩과 리다이렉트의 차이
1.index.html에 링크 추가
```
<a href="./result/input.jsp">포워딩과 리다이렉트의 차이</a><br/>
```
2.WebContent 디렉토리에 result 디렉토리를 생성하고 input.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forwording 과 Redirect의 차이</title>
</head>
<body>
	<h3>결과 페이지로 포워딩</h3>
	<form action="forward.jsp">
		수1:<input type="text" size="10" name="first"/><br/>
		수2:<input type="text" size="10" name="second"/><br/>
		<input type="submit" value="더하기" />
	</form>
	<h3>결과 페이지로 리다이렉트</h3>
	<form action="redirect.jsp">
		수1:<input type="text" size="10" name="first"/><br/>
		수2:<input type="text" size="10" name="second"/><br/>
		<input type="submit" value="더하기" />
	</form>
</body>
</html>
```
3.result 디렉토리에 forward.jsp 파일을 만들고 결과 페이지로 포워딩하는 코드를 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println("처리");
		//포워딩하기
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("forwardresult.jsp");
		dispatcher.forward(request, response);
	%>
</body>
</html>
```

4.result 디렉토리에 forwardresult.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
	<%
		out.println("<h3>포워딩 결과를 보여주는 페이지</h3>");
	%>
</body>
</html>
```

5.실행
* 브라우저 창의 URL을 확인하고 새로고침을 했을 때 콘솔창의 메시지를 확인
URL:http://localhost:9000/javaweb0212/result/forward.jsp?first=&second=
화면에 출력되는 페이지는 forwardresult.jsp 이지만 URL은 forward.jsp 입니다.
새로고침을 하면 forward.jsp에 작성한 내용이 다시 수행

6.result 디렉토리에 redirect.jsp 페이지를 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		System.out.println("리다이렉트 처리");
		//리다이렉트 하기
		response.sendRedirect("redirectresult.jsp");
	%>
</body>
</html>
```
7.result.jsp 파일에 redirectresult.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		out.println("<h3>리다이렉트 결과를 보여주는 페이지</h3>");
	%>
</body>
</html>
```

8.실행하고 리다이렉트 했을 때의 URL 과 새로고침을 했을 때 콘솔을 확인
* 새로고침을 하면 결과 페이지만 새로고침이 됩니다.
* 서버의 처리를 다시 수행하지 않습니다.

9.웹 프로그래밍의 처리 절차
요청페이지 -> 서버에서 처리 -> 결과페이지
* 요청 페이지에서 서버에게 요청할 때 a, form, 자바스크립트를 이용
* 서버에서 처리할 때는 서버언어로 처리
* 서버의 처리가 끝나면 서버언어의 페이지 이동 방법으로 결과 페이지로 이동
포워딩 할 것인지 리다이렉트 할 것인지 결정

10.서버에서 처리한 후 결과 페이지에게 데이터 전달
* 자바에서는 서버에서 결과 페이지에게 전달하는 데이터를 Attribute 라고 합니다.
 1) Attribute를 저장할 수 있는 객체
객체  | 내용
---------------|-----------------
page | 현재 페이지에서만 사용할 수 있는 데이터를 저장
request | forwarding으로 이동할 때만 데이터가 유지, redirect 하게되면 소멸
session | 브라우저를 종료하거나 직접 삭제하기 전까지는 계속 유지
application | 모든 클라이언트가 공유, 1개만 생성

 2) 저장 관련 메소드
* void setAttribute(String name, Object value): 데이터 저장
* Object getAttribute(String name): 저장한 데이터 가져오기
     가져온 데이터를 사용할 때는 원래의 자료형으로 형변환해서 사용해야 합니다.
* void removeAttribute(String name): 저장한 데이터 제거하기

* getAttribute 했을 때 null이 리턴되면 name으로 저장한 적이 없거나 삭제한 데이터

 3) forwarding 할 때 일반적으로 request에 데이터를 저장하지만 redirect 할 때 request에 저장하면 소멸됩니다.
 * redirect 할 때 데이터를 전달하고자 하면 session에 저장해야 합니다.
 * 모든 클라이언트가 공유해야 하는 데이터가 있다면 이 경우는 application에 저장
* korail 같은 웹 사이트에서 전체 접속자수는 application에 저장

#### 실습
1.forward.jsp 파일의 내용을 수정
```jsp
<%
		//요청 페이지에서 전달한 파라미터 읽기
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		
		int s1 = 0;
		int s2 = 0;
		try{
			s1 = Integer.parseInt(first);
			s2 = Integer.parseInt(second);
		}catch(Exception e){}
		
		int result = s1 + s2;
		
		//포워딩을 하는 경우 데이터 저장
		request.setAttribute("result", result);
	
		//포워딩하기
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("forwardresult.jsp");
		dispatcher.forward(request, response);
	%>
```

2.forwardresult.jsp 파일을 수정
* forward.jsp에서 넘겨준 데이터를 출력
```jsp
<%
		out.println("<h3>포워딩 결과를 보여주는 페이지</h3>");
		Object result = request.getAttribute("result");
		out.print("<p>연산결과:" + result + "</p>");
	%>
```
3.redirect.jsp 파일을 수정
```jsp
<%
		//요청 페이지에서 전달한 파라미터 읽기
		String first = request.getParameter("first");
		String second = request.getParameter("second");	
		int s1 = 0;
		int s2 = 0;
		try{
			s1 = Integer.parseInt(first);
			s2 = Integer.parseInt(second);
		}catch(Exception e){}
		
		int result = s1 + s2;
		
		//리다이렉트를 하는 경우 데이터 저장
		//리다이렉트를 할 때 request에 데이터를 저장하면 데이터는 소멸됩니다.
		session.setAttribute("result", result);
	
		//리다이렉트 하기
		response.sendRedirect("redirectresult.jsp");
	%>
```
4.redirectresult.jsp 파일을 수정
```jsp
<%
		out.println("<h3>리다이렉트 결과를 보여주는 페이지</h3>");
		Object result = session.getAttribute("result");
		out.println("<p>결과:" + result + "</p>");
	%>
```
> ### 웹 프로그래밍 연습을 할 때 가장 먼저 해볼 프로젝트
> **입력받는 페이지를 만들어서 데이터를 입력 -> 서버가 입력된 데이터를 읽어서 처리를 하고 결과를 생성 -> 출력하는 페이지를 만들어서 처리한 결과를 출력**
> * 처음 연습을 할 때 부터 3개의 페이지를 별도로 만들어서 처리
> * 처리 내용이 없어서 단순하게 페이지 이동만 하더라도 지금처럼 수행
> 할 수 있으면 매 페이지마다 접속한 클라이언트의 아이피 주소와 페이지 URL을 파일에 기록합니다.
> 파일에 기록된 내용을 읽어서 분석하는 작업에 활용
> 어떤 아이피가 접속해서 입력페이지나 결제페이지에서 종료하는 경우가 많은 UI를 개선

> ### 웹 프로젝트를 할 때 분석 공부를 같이
> * 웹 사이트에서 이동한 경로 와 아이피 그리고 아이디를 기록해 놓는 것은 매우 중요
> * 이런 정보를 바탕으로 UI 분석을 해서 UI를 개선하고 추천 시스템 같은 것을 만들 수 있습니다.

**log 파일 생성 IP + 페이지** 

```jsp
<%@ page import="java.io.*, java.sql.*"%>
	<%
	//오늘 날짜를 문자열로 생성
	long d = System.currentTimeMillis();

	//java.sql.Date 는 날짜만 저장하고 toString을 호출하면 날짜만 문자열로 리턴 
	Date today = new Date(d);
	String filename = today.toString();

	//파일에 기록할 수 있는 객체를 생성 
	//파일이 없으면 생성하고 있으면 뒤에 이어붙이도록 생성 
	PrintWriter pw = new PrintWriter(
                     new FileOutputStream("/Users/jw/javalab/WebPro/WebContent/log/" + filename + ".log", true));
		
	String ip = request.getRemoteAddr();		//접속한 IP주소 가져오기 
	String requestURI = request.getRequestURI();		//요청한 URL 가져오기 - 전체요청 경로 	
	String contextPath = request.getContextPath();		//루트 경로 
	String url = requestURI.substring(contextPath.length() + 1);	// 전체 요청 경로에서 루트 경로 제외하기
		
	//파일에 기록
	pw.println(ip + "-" + url + "\n");
	pw.flush();
	pw.close();
	%>
```
**java에서 log 파일 열기**
```java
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class Main {

	public static void main(String[] args) {

		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(
					new FileInputStream("/Users/jw/javalab/WebPro/WebContent/log2020-02-12.log")));

			while (true) {
				String line = br.readLine();
				if (line == null) {
					break;
				}
				System.out.println(line);
			}
			br.close();
		} catch (Exception e) {
		}
	}
}
```



#### 쿠키와 세션 및 HTML5 저장소
* HTTP 나 HTTPS는 연결형 통신이기는 하지만 한 번 요청을 하고 응답을 하면 연결이 해제됩니다.
  * 이전에 무엇을 했고 지금 무엇을 하고 있는지를 알 수 가 없습니다.
  * 이전 상태나 현재 작업한 내용을 사용할 필요가 있을 때 이를 저장하기 위한 방법이 필요
* Cookie: 클라이언트에 데이터를 저장하고 서버가 사용할 수 있도록 해주는 기술
* Session: 서버에 저장하고 서버가 사용할 수 있도록 해주는 기술
* HTML5 저장소: 클라이언트에 저장하고 클라이언트에서 사용
  * Cookie는 클라이언트에 저장된 데이터인데 사용을 하기 위해서는 서버에 전송을 하고 사용을 해야 하기 때문에 클라이언트에서만 필요한 데이터인데 불필요한 전송을 하게 됩니다.
  대표적인 예가 id 저장 같은 개념입니다.
  id 저장은 웹 브라우저에서만 사용하는데 쿠키를 사용하게 되면 서버에 전송한 후 클라이언트가 다시 돌려받아서 사용해야 합니다.
  이러한 문제를 해결하기 위해서 HTML5에서 등장한 기술이 WebStorage, WebSQL, Indexed DB 의 개념입니다.
* 최근의 미국의 대형 포털 들에서 Cookie를 이용해서 사용자의 동작을 저장한 후 이를 분석해서 UI 개선에 이용하는 사례가 늘고 있습니다. 대표적인 곳이 Oracle 입니다.

#### Cookie
* 데이터를 클라이언트에 저장해두고 서버와 클라이언트가 사용하는 데이터
* 서버 측에서 쿠키에 데이터를 저장하는 명령을 호출하면 클라이언트의 브라우저에 쿠키가 생성되고 클라이언트에서 요청을 서버에게 하면 쿠키의 모든 내용은 서버에 전달됩니다.

 1) 쿠키의 구성
* name
* value
* 유효 시간 : 쿠키의 수명을 설정하기 위한 값
* 도메인 : 이 쿠키를 사용할 수 있는 도메인(웹 애플리케이션 - 프로젝트)을 설정
* 경로 : 쿠키를 사용할 수 있는 경로를 설정

 2) 쿠키 생성 - 서버에서 생성(Java 가 생성)
Cookie ? = new Cookie(String name, String value);
response.addCookie(?);
* 만들기는 서버가 만들지만 저장은 클라이언트에 저장됨
* IE 같은 경우는 이러한 쿠키가 파일로 만들어져서 임시 인터넷 파일 디렉토리에 저장됩니다.

 3) Cookie 클래스의 메소드
String getName() 
String getValue()
String getDomain()
String getPath()
int getMaxAge()
void setName(String name) 
void setValue(String value)
void setDomain(String domain) 
void setPath(String path)
void setMaxAge(int maxAge) : 현재 시간을 기준으로 초 단위로 설정을 합니다.
이 때 음수를 대입하면 브라우저가 닫힐 때 삭제됩니다.

 4) 서버에서 클라이언트가 전송한 모든 쿠키 읽기
Cookie [] request.getCookies() : 배열 , 쿠키캑체가 전부 리턴됨 

 5) 쿠키 삭제
* 쿠키는 삭제하는 메소드가 없고 setMaxAge(0)을 호출해서 수명을 0로 만들어 줍니다.

 6) 쿠키의 이름과 값에 한글이 포함되어 있으면 인코딩을 해서 저장해야 합니다.

#### 쿠키 실습
1.Dynamic Web Project 생성(web.xml 파일을 포함하도록 생성)

2.Tomcat의 lib 디렉토리의 servlet-api.jar 파일을 프로젝트의 WebContent/WEB-INF/lib 디렉토리에 복사

3.WebContent 디렉토리에 index.jsp 파일을 만들고 쿠키 생성 파일로 링크를 생성
```
<a href="./cookie/cookiecreate.jsp">쿠키 생성</a><br/>
```
4.WebContent 디렉토리에 cookie라는 디렉토리를 만들고 cookiecreate.jsp 파일을 만들어서 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
<%
	//쿠키 생성
	Cookie cookie = new Cookie("language", "java");
	//쿠키 저장
	response.addCookie(cookie);
%>
</head>
<body>
	<a href="./cookieread.jsp">쿠키 읽기</a>
</body>
</html>
```

5.실행
* 실행해서 쿠키 생성까지 이동한 후 크롬에서 마우스 오른쪽을 누르고 [검사]를 실행한 후 application 탭에서 cookies에 확인


6.cookie 디렉토리에 cookieread.jsp 파일을 만들고 쿠키를 읽어서 출력하는 코드를 작성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 읽어서 출력하기</title>
</head>
<body>
	<%
		//모든 쿠키 가져오기
		Cookie [] cookies = request.getCookies();
		//모든 쿠키를 순회하면서 쿠키의 값을 출력
		for(Cookie cookie : cookies){
			out.println("<p>" + cookie.getName() +
				":" + cookie.getValue() + "</p>");
		}
	%>
</body>
</html>
```
7.쿠키의 수명을 설정하는 코드를 cookiecreate.jsp 파일에 추가
```jsp
<%
	//쿠키 생성
	Cookie cookie = new Cookie("language", "java");
	//쿠키의 수명을 설정
	cookie.setMaxAge(60);
	//쿠키 저장
	response.addCookie(cookie);
%>
```
8.index.jsp 파일에서 쿠키 생성을 다시 클릭
* 브라우저 창에서 검사 기능을 이용해서 쿠키의 수명을 확인해보면 됩니다.

9.cookieread.jsp 파일로 이동해서 쿠키의 내용을 확인하고 60초 후에 새로 고침을 해서 쿠키의 내용이 소멸되는지 확인

10.cookiecreate.jsp 파일의 코드를 수정
```jsp
<%
	//다른 브라우저에서 한글이 깨진다면 자바를 직접 입력하지 말고
	//java.net.URLEncoder.encode("자바", "utf-8")로 인코딩해서 대입하면 됩니다. 
	//쿠키 생성
	Cookie cookie = new Cookie("language", "자바");
	//쿠키의 수명을 설정
	cookie.setMaxAge(60);
	//쿠키 저장
	response.addCookie(cookie);
%>
```

#### 쿠키를 이용한 ID 저장
1.index.jsp 파일에 아이디와 비밀번호 입력란을 만들고 아이디 저장 체크박스를 체크할 수 있는 화면으로 이동할 수 있는 링크 생성
```jsp
<a href="./cookie/login.jsp">쿠키를 이용한 아이디 저장</a><br/>
```
2.cookie 디렉토리에 login.jsp 파일을 만들고 코드를 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="./loginprocess.jsp" method="post">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" /><br/>


		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required" /><br/>
		
		<input type="checkbox" name="idsave" value="idsave" />아이디 저장<br/>
		<input type="submit" value="로그인" />

	</form>
</body>
</html>
```
3.loginprocess.jsp 파일을 생성해서 로그인 처리하는 코드를 작성
* idsave 란에 체크가 되어 있으면 id 라는 쿠키를 만들어서 아이디를 저장
  체크가 되어 있지 않으면 id 라는 쿠키를 삭제
* 처리가 끝나면 loginresult.jsp 파일로 리다이렉트
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//파라미터 읽기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String idsave = request.getParameter("idsave");


		//idsave 란에 체크가 안되어 있으면 id라는 쿠키를 삭제
		//idsave 란에 체크가 되어 있으면 id 라는 쿠키에 입력한 아이디를 저장
		Cookie cookie = new Cookie("id", id);
		if(idsave == null){
			cookie.setMaxAge(0);
		}
		response.addCookie(cookie);
		
		//결과 페이지로 리다이렉트
		response.sendRedirect("./loginresult.jsp");
	%>

</body>
</html>
```
4.loginresult.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 결과</title>
</head>
<body>
	<h3>로그인 처리를 수행했습니다.</h3>
	<a href="./login.jsp">로그인</a>
</body>
</html>
```

5.login.jsp 파일을 수정
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		//쿠키를 전부 가져오기
		Cookie [] cookies = request.getCookies();


		//아이디 와 체크박스에 출력할 문자열 변수
		String id = "";
		String check = "";
		//쿠키가 1개라도 있다면
		if(cookies != null){
			//쿠키를 순회하면서 쿠키의 이름이 id인 것을 찾습니다.
			for(Cookie cookie : cookies){
				//쿠키의 이름이 id라면 그 때 값을 id변수에 저장
				//check에 체크박스 체크 여부를 저장
				if(cookie.getName().equals("id")){
					id = cookie.getValue();
					check = "checked='checked'";
					break;
				}
			}
		}
	%>
	
	<form action="./loginprocess.jsp" method="post">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" value='<%=id %>' /><br/>
		
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required" /><br/>
		
		<input type="checkbox" name="idsave" value="idsave" 
		<%=check%> />아이디 저장<br/>
		<input type="submit" value="로그인" />
	
	</form>

</body>
</html>
```

#### WebStorage
* HTML5 API로 브라우저에 데이터를 저장하는 기술
1.기본 개념
 1) 종류
* SessionStorage: 처음 웹 애플리케이션에 접속했을 때 생성되고 브라우저를 종료하면 소멸되는 저장소
* LocalStorage: 한 번 저장하면 브라우저 창을 닫더라도 계속 유지되는 저장소

 2) 쿠키와 다른점
* 쿠키는 사용할 때 마다 서버로 전송을 해야 하지만 스토리지는 서버로 전송할 필요가 없습니다.(서버가 알 필요가 없는 경우, 오프 라인 상태에서도 가능)
* 쿠키는 서로 다른 언어가 사용해야 하기 때문에 문자열만 저장이 가능하지만 스토리지는 자바스크립트 만이 사용하기 때문에 자바스크립트의 모든 객체를 저장할 수 있습니다.
* 스토리지는 크기에 제한도 없습니다.

 3) 생성을 할 필요가 없습니다.
* 자바스크립트 코드 안에서 sessionStorage, localStorage 라는 이름으로 사용하면 됩니다.

 4) 메소드
* 데이터 저장 : localStorage["키이름"] = 데이터
* 데이터 읽기 : localStorage["키이름"]
* 데이터 수정은 존재하는 키이름에 데이터를 대입하면 됩니다.
* 삭제 : delete localStorage["키이름"]
* 전체 삭제 : localStorage.clear()

 5) Storage는 하나의 객체를 가지고 데이터를 계속 저장하기 때문에 많은 양의 데이터를 저장하면 성능이 저하됩니다.
* 많은 양의 데이터를 저장해야 한다면 Indexed DB를 권장
* 예전에는 WebSQL 도 사용이 되었지만 존재하지 않는 브라우저도 있고 성능도 떨어져서 비추천

2.웹 스토리지를 이용한 아이디 저장
 1) index.jsp 파일에 웹 스토리지를 이용한 파일의 링크를 생성
```jsp
<a href="./webstorage/login.jsp">웹 스토리지를 이용한 아이디 저장</a><br/>
```
 2) WebContent 디렉토리에 webstorage 디렉토리를 만들고 login.jsp 파일을 생성하고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./loginprocess.jsp" method="post" id="loginform">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" 
		id="id"/><br/>

		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required" /><br/>
		
		<input type="checkbox" name="idsave" id="idsave" />아이디 저장<br/>
		<input type="submit" value="로그인" />
	
	</form>
	
	<script>
		//body에 있는 태그 찾아오기
		var loginform = document.getElementById("loginform");
		var ids = document.getElementById("id");
		var idsave = document.getElementById("idsave");
		
		//폼의 데이터를 submit 할 때 
		loginform.addEventListener("submit", function(e){
			//아이디 저장란에 체크가 되어 있으면 아이디 입력값을 로컬 스토리지에 저장
			//아이디 저장란에 체크가 되어 있지 않으면 아이디 입력값을 로컬 스토리지에서 제거
			if(idsave.checked == true){
				localStorage["id"] = ids.value;
			}else{
				delete localStorage["id"];
			}
		});
		
		//윈도우가 로드될 때 아이디 저장 여부를 확인해서 존재하면 표시
		window.addEventListener("load", function(e){
			if(localStorage["id"]){
				ids.value = localStorage["id"];
				idsave.checked = true;
			}else{
				ids.value = "";
				idsave.checked = false;
			}
		})
	
	</script>

</body>
</html>
```

#### Session
* 서버에 저장할 수 있는 내장 객체
* jsp에서는 session이라는 이름으로 사용하면 되고 그 이외의 영역에서는 request객체.getSession() 이라는 메소드를 호출하면 HttpSession 타입의 객체를 리턴해 줍니다.
* 세션은 일반적으로 브라우저 당 1개씩 생성
* 처음 웹 애플리케이션에 접속하면 1개가 만들어지고 브라우저를 종료하면 세션이 소멸됩니다.
* 세션을 사용하는 목적은 브라우저가 접속되어 있는 동안 유지해야 하는 정보를 저장하거나 redirect 할 때 데이터를 전달
* 로그인을 했을 때 로그인 여부를 세션에 저장합니다.

1.세션에 데이터를 저장하고 읽어내기
```
void setAttribute(String name, Object value)

Object getAttribute(String name)

void removeAttribute(String name)
```
2.그 이외 메소드
메소드 | 내용
----------|-------------
String getId() | Session의 ID 리턴
long getCreationTime() | 세션이 생성된 시간
long getLastAccessedTime() | 세션을 마지막으로 사용한 시간
void setMaxInactiveInterval(int second) | 세션을 사용하지 않았을 때 자동으로 소멸되는 시간을 설정
int getMaxInactiveInterval() |
void invalidate() | 세션을 소멸

3.세션 만료 시간을 web.xml 파일에 설정
* 설정한 시간동안 세션을 사용하지 않으면 자동으로 세션이 소멸됩니다.
* 일정시간동안 아무런 동작도 취하지 않으면 로그아웃 되는 기능 구현에 이용
```xml
<session-config>
	<session-timeout>분단위 숫자</session-timeout>
</session-config>
```



#### 실습 - 네이버 로그인 창과 유사한 형태 만들기

1.index.jsp 파일에 로그인 창으로 이동하는 링크 설정
```jsp
<div id="content">
	<%
		out.println("<a href='login.jsp'>로그인</a><br/>");
	%>
</div>
```
2.WebContent 디렉토리에 login.jsp 파일을 생성하고 작성
* 아이디와 비밀번호 입력란을 만들고 로그인 버튼과 잘못입력해서 돌아온 경우 메시지를 출력할 영역을 생성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	#disp{
		color:red;
	}
</style>
</head>
<body>
	<%
		//세션에서 msg 키의 값을 가져옵니다.
		Object msg = session.getAttribute("msg");
		//값이 있다면 div를 만들어서 출력하고 삭제
		if(msg != null){
			out.println("<div id='disp'>" + msg + "</div>");
			session.removeAttribute("msg");
		}
	%>
	<form action="process.jsp" method="post">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required"/><br/>
		
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required" /><br/>
	
		<input type="submit" value="로그인" />
	</form>

</body>
</html>
```
3.로그인을 처리하는 process.jsp 파일을 만들고 작성
* id 가 root 이고 pw가 1234 인 경우 로그인 성공으로 처리하고 나머지 경우는 로그인 실패로 처리
* 데이터베이스에서 데이터를 찾아서 비교한 후 회원 정보를 가져와야 합니다.
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<%
		//파라미터 읽기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		if("root".equals(id) && "1234".equals(pw)){
			//로그인 성공 - 회원정보를 세션에 저장하고 결과 페이지로 redirect
			session.setAttribute("id", "root");
			session.setAttribute("nickname", "관리자");
			
			//메인 페이지로 리다이렉트
			response.sendRedirect("./");
			
		}else{
			//로그인 실패 - 메시지를 세션에 저장하고 로그인 페이지로 redirect
			session.setAttribute("msg", "없는 아이디이거나 잘못된 비밀번호입니다.");
			response.sendRedirect("./login.jsp");	
		}	
	%>

</body>
</html>
```

4.index.jsp 에서 로그인 된 경우와 그렇지 않은 경우 출력을 다르게 하기 위해서 수정
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javaweb0213</title>
</head>
<body>
	<a href="./cookie/cookiecreate.jsp">쿠키 생성</a><br/>
	<a href="./cookie/login.jsp">쿠키를 이용한 아이디 저장</a><br/>
	<a href="./webstorage/login.jsp">웹 스토리지를 이용한 아이디 저장</a><br/>
	<div id="content">
	<%
		//로그인 여부는 session의 id에 데이터가 있으면 로그인 한 것이고 없으면 로그인 안한 것입니다.
		Object id = session.getAttribute("id");
		if(id == null){
			out.println("<a href='login.jsp'>로그인</a><br/>");
		}else{
			out.println("<p>" + session.getAttribute("nickname") + "님 </p>");
			out.println("<p><a href='./logout.jsp'>로그아웃</a></p>");
		}
	%>
	</div>

</body>
</html>
```

#### 로그아웃 처리
* 세션을 클리어하는 것으로 처리합니다.
* 로그인 되어 있다는 사실을 세션에 id 키에 데이터가 있다는 것으로 안 것이기 때문에 세션의 데이터를 전부 지우면 id 키의 데이터도 지워지므로 로그인이 되지 않은 것으로 간주

#### 실습 - 로그아웃 처리
1.logout.jsp 파일을 만들고 로그아웃 처리
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//세션 삭제
		session.invalidate();
		//보통은 로그아웃하면 메인 페이지로 리다이렉트
		//response.sendRedirect("./");
	%>
	
	<h3>로그아웃 하셨습니다.</h3>
	<h4>5초 후에 메인 페이지로 이동합니다.</h4>
	<script>
		//5초 후에 ./ 로 이동
		setTimeout(function(){
			location.href = "./";
		}, 5000)
	</script>
</body>
</html>
```

#### 일정 시간 동안 세션을 사용하지 않으면 자동으로 세션을 초기화
* web.xml 파일에 session-config를 설정하면 됩니다.
* 2분동안 세션을 사용하지 않으면 세션이 자동으로 초기화되도록 web.xml 파일에 작성
```xml
<!-- 세션 초기화 시간 설정 -->
  <session-config>
  	<session-timeout>2</session-timeout>
  </session-config>
```

#### 로그인 한 정보를 무조건 세션에 저장?
* 로그인 한 정보를 세션에 무조건 저장하는 것은 고려를 해봐야 합니다.
> 로그인 한 회원이 많다면 세션에 저장하는 것은 서버에 부담을 가중시키게 됩니다.
> 세션은 서버에 저장을 합니다.
> 동시 접속자가 많은 경우에는 세션에는 구분하기 위한 키 값만 저장하고 나머지 정보는 데이터베이스에 저장해서 필요할 때 마다 데이터베이스에서 불러오는 형태로 만듭니다.

#### 에러 페이지 설정

* Java Web Programming에서는 예외가 발생하면 WAS가 가지고 있는 예외 페이지를 보여지도록 설정되어 있습니다.
> WAS의 예외 페이지를 사용자에게 보여주는 것은 바람직한 처리 방법이 아닙니다.
> 개발자는 예외 코드를 읽을 수 있지만 사용자는 예외 코드를 읽지 못하기 때문입니다.
> 별도의 예외 페이지를 만들어서 출력합니다.

1.에러가 났을 때 보여지는 페이지 생성
* 페이지 상단에 아래 코드를 추가하면 exception 객체를 이용할 수 있습니다.
```
<%@ page isErrorPage="true" %>
```
2.jsp 페이지에서 예외가 발생했을 때 출력될 예외 페이지 설정
```
<%@ page errorPage ="/에러 페이지 경로" @>
```
#### 3.실습
 1) index.html 에 에러 페이지 출력을 위한 링크를 설정
```html
<a href="./error/input.jsp">에러 출력을 위한 입력 페이지</a><br />
```
 2) WebContent 디렉토리에 error 디렉토리를 만들고 input.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 페이지</title>
</head>
<body>
	<form action="./process.jsp">
		수1 <input type="text" name="su1" /><br />
		수2 <input type="text" name="su2" /><br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>
```

 3) process.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//입력한 파라미터 읽기
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");

		int result = Integer.parseInt(su1) + Integer.parseInt(su2);
		
		out.println("<p>더한 결과:" + result + "</p>");
	
	%>

</body>
</html>
```

 4) 실행을 해서 정수를 입력하면 아무런 문제가 없지만 문자열이나 실수를 입력하면 예외가 발생

4.에러 코드
**100번대 : 요청 중**
**200번대 : 정상적인 응답이 발생한 경우**
**300번대 : 리다이렉트 중**
**400번대 : 클라이언트 오류**
**500번대 : 서버 오류**

#### 5.실습 - process.jsp 에서 예외가 발생하는 경우 직접 만든 예외 페이지를 출력
 1 )예외가 발생했을 때 보여질 예외 페이지를 생성 - errordisp.jsp
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 이 페이지에서는 exception 객체를 사용할 수 있게 됩니다. -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 페이지</title>
</head>
<body>
	<%
		out.println("<h3>문제가 발생했습니다. 빠른 시일내에 복구하겠습니다.</h3>");
	%>
</body>
</html>
```

 2) process.jsp 페이지에서 예외가 생기면 errordisp.jsp 파일을 출력하도록 설정을 추가
```jsp
<!-- 예외가 발생했을 때 보여질 페이지 설정 -->
<%@ page errorPage = "./errordisp.jsp" %>
```

6.IE에서의 에러 페이지
* IE에서는 에러 페이지의 출력 내용이 512 byte가 안되면 자신의 에러 페이지를 출력
* 에러 페이지의 내용이 512 byte가 안되면 주석을 추가해서 512 byte가 넘도록 만들어야 IE에서도 동일한 에러 페이지가 출력됩니다.
```
<%-- <!-- 아무 내용 --> --%>
```
7.web.xml 을 이용한 에러 페이지 설정
* 모든 페이지에 에러 페이지를 직접 설정하는 것은 자원의 낭비
 1) 에러 코드 별 에러 페이지 설정
```xml
<error-page>
	<error-code>에러 코드</error-code>
	<location>/에러페이지 위치</location>
</error-page>
```
* 설정한 에러 코드에 해당하는 에러가 발생하면 location에 설정한 페이지가 출력

 2) 예외 별 에러 페이지 설정
```xml
<error-page>
	<exception-type>예외클래스 이름</exception-type>
	<location>/에러페이지 위치</location>
</error-page>
```
8.권장 사항
* 별도로 보여져야 하는 에러 페이지가 있다면 jsp 페이지에 직접 설정
* 404 나 500 번 오류는 web.xml을 이용해서 설정

#### Model 2 Pattern
* 처리는 Servlet 과 Java 클래스들이 담당하고 출력은 JSP 가 담당하도록 하는 패턴
* JSP 페이지에서는 자바 코드를 사용하지 않는 것을 원칙으로 합니다.

#### HttpServlet
* URL로 호출할 수 있는 Java EE의 클래스 
* jsp는 HttpServlet의 변형

1.HttpServlet 의 생성 및 실행
* HttpServlet을 만들 때 매핑이 될 URL을 설정해도 되고 HttpServlet 클래스를 만들고 난 후 web.xml 파일에서 URL 매핑을 해도 됩니다.
* 양쪽에서 모두 하면 에러가 발생
> 서블릿 위에서 어노테이션을 이용했다면 web.xml 에서 매핑을 하면 안됩니다.
> web.xml을 이용해서 매핑을 할려면 서블릿 위의 어노테이션을 삭제해야 합니다.
* 서블릿은 별도의 실행방법이 없고 URL을 호출하면 자동으로 호출되고 이 때 파라미터 전송방식에 따라 doGet 이나 doPost 메소드가 자동으로 호출됩니다.
* 서블릿에서 HTML을 출력할 수 있지만 Model2에서는 서블릿에서는 출력하지 않고 결과 페이지로 포워딩하거나 리다이렉트 해서 결과 페이지에서 출력합니다.

#### 2.실습
* hiservlet 이라는 url이 왔을 때 동작하는 서블릿을 만들고 요청이 오면 FirstServlet이라고 출력
```javaservlet
@WebServlet("/hiservlet")
public class FirstController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FirstController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("FirstServlet");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
```
* 실행하고 기본 주소 뒤에 hiservlet 이라고 입력

3.Servlet의 메소드
 1) 생성자 : 서블릿 클래스의 인스턴스가 만들어 질 때 호출되는 메소드 
 2) init : 초기화 메소드 - 생성자가 호출되고 난 후 호출되는 메소드 
 3) doGet, doPost, dotPut, doDelete
* 요청을 할 때 GET, POST, PUT, DELETE 방식으로 요청하면 호출되는 메소드
* 대부분의 경우는 GET 과 POST만 처리 
 4) destory : 서블릿이 소멸될 때 호출되는 메소드

4.Servlet 의 수명

* 특별한 설정이 없다면 맨 첫번째 요청이 왔을 때 WAS가 인스턴스를 생성해서 자신이 소유하고 다음 요청부터는 이미 만들어진 서블릿을 가지고 처리 
* 서블릿은 개발자가 만들지만 서블릿의 인스턴스는 개발자가 만들지 않고 WAS가 만든다. 
> 이러한 것을 IoC(제어의 역전-만들기는 개발자가 만들고 실제 사용은 컨테이너나 프레임워크가 하는것)이라고 한다. 
> 개발자가 직접 만들면 관리에 문제가 생길 수 있다.
> WAS가 만들어서 관리하겠다. 개발자는 필요한 내용만 적어라 
> Spring - IoC, DL AOP



#### HttpServlet
* URL을 이용해서 호출할 수 있는 Java EE 클래스
1.URL 매핑
 1) 어노테이션을 이용하는 방법
클래스 선언문 위에 
`@WebServlet("매핑할 URL")` : 하나의 URL 패턴과 매핑
`@WebServlet(name="별명", urlPatterns={"매핑할URL", "매핑할URL"...})`
* 이 설정은 직접해도 되지만 서블릿을 만들 때 설정할 수 있습니다.

 2) web.xml 파일에 설정하는 방법
```xml
<servlet>
	<servlet-name>이름</servlet-name>
	<servlet-class>서블릿 클래스의 경로</servlet-class>
</servlet>
<servlet-mapping>
	<servlet-name>이름</servlet-name>
	<url-pattern>매핑할URL</url-pattern>
</servlet-mapping>
```

 3) 2가지 중 하나의 방법만 사용해야 합니다.

2.Servlet 메소드의 호출
 1) get 방식으로 호출:doGet 메소드가 호출
* 일반적인 요청

 2) post 방식으로 호출:doPost 메소드가 호출
* form에서 method를 post로 지정한 경우
* ajax에서 전송방식을 post로 지정한 경우

3.Controller 패턴
* 요청 라우팅이라고도 해도 됩니다.
* 하나의 요청을 처리하기 위해서 서블릿 1개가 필요
> 개의 요청이 있으면 서블릿 10개 생성?
* 요청들을 하나의 서블릿이 처리하도록 만들고 모든 요청을 이 서블릿을 통하도록 만듭니다.
> 메인 페이지를 요청하는 것도 서블릿을 통해서 하도록 만듭니다.
* 모든 요청이 하나의 서블릿을 경유해서 처리되기 때문에 제어하기가 편리합니다.

4.URL 패턴
* 여러 개의 URL을 모아서 표현하는 방법
구분 | 내용
-----------|-----------
/*  | 모든 요청
*.확장자  | 확장자로 끝나는 모든 요청 - 공공기관이나 naver가 채택한 방식
/디렉토리/* | 중간에 디렉토리가 포함된 모든 요청 - 최근에 권장하는 방식(디렉토리를 이용해서 서비스를 구분)
/디렉토리/요청 | 요청 1개
/ | 서버경로 - 시작 페이지 요청
* jsp 페이지나 서블릿, web.xml, html 파일 등에서 /로 시작하면 서버로부터 경로입니다.

5.클라이언트의 요청 URL을 확인
`String request.getRequestURI()` : 매번 공통된 ContextPath가 같이 출력
`String request.getContextPath()` : ContextPath를 리턴(전체 요청 경로에서 공통된 경로를 제거)
`request.getRequestURI().substring(request.getContextPath().length() + 1);` // +1을 하면 /가 제거되고 경로가 리턴

요청방식을 구분
`String request.getMethod();` // get 방식인지 post 방식인지 구분  

6.URL 패턴 실습
 1) 디렉토리에 auth가 포함된 요청을 처리하는 서블릿을 만들어서 사용
`@WebServlet({"/auth/*"})`

 2) doGet에 요청을 구분하는 코드를 작성





#### MVC Model 2 Pattern 의 프로젝트 실습
1.프로젝트에 시작 페이지(index.jsp)를 생성하고 5개의 요청을 생성

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Model2 프로젝트</title>
</head>
<body>
	<a href="./item/insert">데이터삽입</a><br/>
	<a href="./item/list">전체 데이터 가져오기</a><br/>
</body>
</html>
```

2.서비스 구조 만들기
 1) 사용하고자 하는 데이터베이스 테이블의 하나의 행과 매핑하는 DTO 클래스를 생성
```
정수 번호
문자열 이름
정수 가격
문자열 보충설명
문자열 원산지
```
 2) domain 패키지에 Item 이라는 클래스로 생성
* 속성들을 private 변수로 선언
* 매개변수가 없는 생성자와 매개변수가 있는 생성자(constructor)를 생성
* 접근자 메소드 생성(getter & setter)
* toString 메소드를 재정의
```java
package domain;

public class Item {
	private int num;
	private String name;
	private int price;
	private String description;
	private String manufacture;
	
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Item(int num, String name, int price, String description, String manufacture) {
		super();
		this.num = num;
		this.name = name;
		this.price = price;
		this.description = description;
		this.manufacture = manufacture;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacture() {
		return manufacture;
	}
	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}
	@Override
	public String toString() {
		return "Item [num=" + num + ", name=" + name + ", price=" + price + ", description=" + description
				+ ", manufacture=" + manufacture + "]";
	}
}
```
 3) item 디렉토리 패턴을 처리할 수 있는 Controller 역할을 하는 서블릿을 생성
```java
@WebServlet("/item/*")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ItemController() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.getWriter().append("Served at: ").append(request.getContextPath());
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }
}
```

* Service 는 템플릿 메소드 패턴(인터페이스 -> 클래스)을 사용합니다.

 4) service 의 메소드를 정의한 Service 인터페이스를 생성
* service.ItemService
```java
package service;

public interface ItemService {

}
```

 5) service의 메소드를 구현한 Service 클래스를 생성
* service.ItemServiceImpl
```java
package service;

public class ItemServiceImpl implements ItemService {

}
```

 6) 데이터베이스 연동을 위한 DAO 클래스를 생성
* dao.ItemDao
```java
package dao;

public class ItemDao {

}
```

3.Controller, Service, Dao의 관계를 구성
Dao -> Service -> Controller

 1) ItemServiceImpl 클래스에 Dao 변수를 생성하고 객체를 대입하는 코드를 작성
```java
	private ItemDao itemDao;
	

	//생성자와 유사한 역할을 수행하는 초기화 블럭
	//인스턴스가 생성될 때 이 코드를 수행
	{
		itemDao = new ItemDao();
	}
```
 2) Controller 클래스에 Service 변수를 생성하고 객체를 대입하는 코드를 작성
```java
//템플릿 메소드 패턴으로 만들어진 클래스는
//변수는 인터페이스 타입으로 선언하고 인스턴스는 클래스 타입으로 생성해서 대입
    private ItemService itemService;
       

    public ItemController() {
        super();
        itemService = new ItemServiceImpl();
    }
```
4.데이터 삽입 요청 처리 코드 만들기
데이터 삽입을 클릭하면 데이터 삽입 화면으로 이동하고 데이터를 입력하고 삽입을 누르면 실제 삽입을 수행합니다.

 1) index.html에서 데이터 삽입을 클릭하면 데이터 삽입 페이지로 이동하도록 Controller 클래스의 doGet 메소드에 작성
```java
//분기를 위해서 필요한 데이터를 가져오기
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		

		String method = request.getMethod();
		
		//포워딩에 사용하기 위한 변수
		RequestDispatcher dispatcher = null;
		//단순 페이지 이동은 포워딩 하는 것이 좋습니다.
		if(command.contentEquals("/item/insert") && method.equals("GET")) {
			//현재 URL이 /item/insert 라서 WebContent 디렉토리로 이동할려면 item을 제거해야 해서
			//../를 추가하고 views/insert.jsp로 포워딩
			//WebContent/views/insert.jsp 파일이 존재해야 합니다.
			dispatcher = request.getRequestDispatcher("../views/insert.jsp");
			dispatcher.forward(request, response);
		}
```
 2) WebContent 디렉토리에 views 디렉토리를 만들고 insert.jsp 파일을 추가하고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 삽입화면</title>
</head>
<body>
	<!-- 최근에는 form을 만들 때 무조건 post 방식으로 action을 설정하지 않습니다.
	action을 설정하지 않으면 기존 URL을 그대로 사용 
	작업이 1가지인데 단지 과정이 2가지라서 서로 다른 URL을 2개 사용하지 않도록 하는 것을 권장-->
	<form method="post" id="itemform">
		<label for="num">번호</label>
		<input type="number" name="num" id="num"/><br/>


		<label for="name">이름</label>
		<input type="text" name="name" id="name"/><br/>
		
		<label for="price">가격</label>
		<input type="number" name="price" id="price"/><br/>
		
		<label for="manufacture">원산지</label>
		<input type="text" name="manufacture" id="manufacture"/><br/>
		
		<label for="description">보충설명</label>
		<input type="text" name="description" id="description"/><br/>
		
		<input type="submit" value="데이터 삽입"/>
	</form>

</body>
</html>
```

 3) Dao 클래스에서 삽입을 실제로 처리하는 메소드를 생성
```java
//데이터 삽입, 삭제, 갱신은 리턴타입이 int(영향받은 행의 개수)
//삽입과 갱신은 매개변수가 Domain 클래스 1개
//삭제는 상황에 따라 다르지만 대부분 기본키 1개
public int insert(Item item) {
	//return 데이터 삽입 메소드;
	return 1;
}
```
 4) Service 인터페이스에서 처리를 위한 메소드를 선언
```java
//데이터 삽입을 위한 메소드
//Service는 Controller로 부터 request를 넘겨받아서 클라이언트의 데이터를 읽고
//작업을 수행한 후 리턴을 합니다.

public int insert(HttpServletRequest request);
```
 5) ServiceImpl 클래스에 처리를 위한 메소드를 구현
* 파라미터를 읽고 읽은 데이터를 가지고 Dao가 사용할 수 있는 매개변수 형태로 만들고 Dao 메소드를 호출하고 그 결과를 Controller에게 리턴
```java
	@Override
	public int insert(HttpServletRequest request) {
		try {
			Item item = new Item();
			
			//파라미터 인코딩
			request.setCharacterEncoding("utf-8");
			//파라미터 읽기
			String num = request.getParameter("num");
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String manufacture = request.getParameter("manufacture");
			String description = request.getParameter("description");
			
			//Dao의 매개변수 만들기
			item.setNum(Integer.parseInt(num));
			item.setName(name);
			item.setPrice(Integer.parseInt(price));
			item.setManufacture(manufacture);
			item.setDescription(description);
			
			//Dao의 메소드를 호출해서 결과를 리턴
			return itemDao.insert(item);
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
			return -1;
		}
	}
```
6)Controller 클래스의 doGet 메소드 삽입을 처리해달라는 요청이 왔을 때 수행할 코드를 작성
```java
else if(command.contentEquals("/item/insert") && method.equals("POST")) {
	//작업을 수행해야 하는 경우는 Service의 메소드를 호출
	itemService.insert(request);
	//결과 페이지로 이동 - 삽입, 삭제, 갱신은 반드시 리다이렉트로 이동
	//자신의 요청이 /item/insert 이므로 /item/list로 갈때는 공통된 부분은 제외하고 설정
	response.sendRedirect("./list");
}
```

#### EL(Expression Language)
1.특징
* Java 에서 만든 Attribute를 쉽게 출력하기 위한 식
* 쿠키나 파라미터도 쉽게 출력

2.출력 방법
* ${attribute 이름} : attribute의 toString 메소드를 호출해서 출력
* null 인 경우는 출력하지 않음

#### 3.실습 - attribute 출력
 1) ItemController의 URL 매핑 부분을 수정 - /el/*을 추가
```
@WebServlet({"/item/*", "/el/*"})
```
 2) index.jsp 파일에 el 출력을 위한 링크를 추가
```
<a href="./el/disp">el 출력</a><br />
```
 3) ItemController 클래스의 doGet 메소드에 el/disp 요청을 처리하는 코드를 작성
```
else if(command.equals("/el/disp")) {
	//데이터 저장
	request.setAttribute("msg", "Hello EL");
			

	dispatcher = request.getRequestDispatcher("../views/disp.jsp");
	dispatcher.forward(request, response);

}
```
 4) WebContent 디렉토리의 views 디렉토리에 disp.jsp 파일을 만들고 전달된 데이터를 출력
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 출력</title>
</head>
<body>
	<%
		//request 나 session에 저장된 attribute를 출력하기 위해서는
		//읽어와서 출력
		Object msg = request.getAttribute("msg");
		out.println("<p>" + msg + "</p>");
	%>
	<p>${msg}</p>
</body>
</html>
```
* Model 2에서는 jsp 페이지에서 자바 코드를 사용하지 않는 것을 권장
> EL을 이용해서 출력하게 되면 코드도 간결해지고 jsp 페이지에서 java 코드가 필요 없어집니다.

4.EL 데이터를 찾는 순서
* page -> request -> session -> application 순으로 접근해서 attribute를 찾습니다.
> 먼저 찾은 곳에서 저장된 데이터를 출력
* 특정한 위치의 attribute를 출력하고자 하면 attribute 앞에 scope를 붙이면 됩니다.
```
${attribute이름} => ${pageScope.attribute}
```
requestScope, sessionScope, applicationScope를 붙일 수 있음
각 영역에서 이름이 겹치는 경우는 거의 없음

5.파라미터 출력
`${param.파라미터이름}`
`${paramValues.파라미터이름[인덱스]}`

6.쿠키 출력
`${cookie.쿠키이름}`

7.초기화 파라미터 출력
`${initParam.파라미터이름}`
* 초기화 파라미터는 web.xml 에 설정해서 프로젝트가 실행될 때 읽을 수 있는 파라미터

#### 8.실습 - 초기화 파라미터 출력
 1) web.xml 파일에 초기화 파라미터 생성
```xml
<!-- 초기화 파라미터 생성 -->
  <context-param>
  	<param-name>db</param-name>
  	<param-value>211.183.6.60:1521/xe</param-value>
  </context-param>
```
 2) disp.jsp 파일에 초기화 파라미터 출력하는 코드를 작성

`<p>초기화 파라미터:${initParam.db}</p>`

>**초기화 파라미터 사용 이유**
>처음 한 번 읽어서 계속 사용하는 문자열의 경우는 java 코드에 적는 것 보다는 별도의 파일에 저장해두고 읽는 것이 좋습니다.
>초기 문자열이 변경되어야 하는 경우 java 코드에 만들면 java 코드를 수정해야 합니다.
>java 코드를 수정하면 compile을 다시 해야 하고 build를 다시해야 해서 예기치 않은 문제가 발생할 수 있기 때문에 별도의 파일에 작성해서 변경이 되더라도 다시 실행만 하면 되도록 해주는 것이 좋습니다.

9.대괄호 연산자와 .연산자
* 대괄호([ ])는 배열에서만 사용할 수 있는 연산자인데 EL에서는 List 와 Map에서도 사용이 가능합니다.
> 배열[인덱스]
> list.get(인덱스)를 해야 하지만 list[인덱스]로 데이터에 접근이 가능합니다.
> map.get(키)를 해야 하지만 map["키"]로 데이터에 접근이 가능합니다.

> map 과 dto 객체는 자신의 속성에 접근할 때 .속성명 으로 접근이 가능합니다.

10.list, map, dto 를 이용한 출력
 1) ItemController의 /el/disp 요청을 처리하는 부분을 수정
```java
else if(command.equals("/el/disp")) {
			//데이터 저장
			request.setAttribute("msg", "Hello EL");
			//List, Map, Item 클래스의 객체를 저장
			List<String> list = new ArrayList<String>();
			list.add("List");
			list.add("Set");
			list.add("Map");
			
			//Map 객체를 생성
			Map<String, Object>map = new HashMap<String, Object>();
			map.put("Encapsulation", "클래스와 인스턴스를 만드는 것");
			map.put("Inheritance", "상위 클래스의 모든 것을 하위 클래스가 물려받는 것");
			map.put("Polymorphism",
					"동일한 코드가 대입되는 인스턴스에 따라 다른 메소드를 호출하는 것");
			
			//DTO 객체를 생성
			Item item = new Item();
			item.setNum(1);
			item.setName("딸기");
			item.setPrice(4000);
			item.setManufacture("충남 논산");
			item.setDescription("하우스에서 생성");
			
			//데이터 저장
			request.setAttribute("list", list);
			request.setAttribute("map", map);
			request.setAttribute("item", item);
			
			dispatcher = request.getRequestDispatcher("../views/disp.jsp");
			dispatcher.forward(request, response);
		}
```
 2) disp.jsp 파일에서 list, map, item을 출력
```jsp
<p>리스트 출력:${list[0]}</p>
<p>맵 출력:${map.Encapsulation}</p>
<p>DTO 출력:${item.name}</p>
```
11.el에서 기억해야 할 것
 1) 기본형(boolean, byte, short, char, int, long, float, double), String, Date 는 attribute 이름만 이용해서 출력

 2) Map 이나 Class(DTO) 의 데이터는 이름.속성이름 으로 출력 

#### JSTL
* Java Web Programming에서 자주 사용하는 Java 의 기능을 태그로 만들어서 사용할 수 있도록 해준 태그 라이브러리
* jsp 페이지에서 자바코드를 사용하지 않고 자바의 기능을 사용하기 위해서 고안

1.기능
 1) core : 자바의 변수선언 과 제어문 사용
 2) formatting : 출력 형식을 설정
 3) 데이터베이스
 4) xml
 5) 문자열 함수

2.사용 준비
* jstl.jar 파일을 다운로드 받아서 WEB-INF/lib 디렉토리에 복사

3.자바에서 외부 라이브러리를 사용하는 방법
 1) Java Application 의 경우 : jar 파일을 프로젝트에 복사하고 build path에 추가하면 됩니다.
 2) Java Web Application 의 경우 : jar 파일을 WebContent/WEB-INF/lib 디렉토리에 복사

 3) Maven Project 의 경우 : pom.xml 파일에 의존성 설정
 4) Gradle Project(Android) : build.gradle 이라는 파일에 의존성 설정

* Maven 과 Gradle은 프로젝트가 아니고 빌드 도구 입니다.

4.외부 라이브러리를 다운로드 받거나 pom.xml 이나 build.gradle에 작성
* www.mvnrepository.com에서 검색하면 됩니다.
* 오픈소스가 아닌 경우는 위 사이트에서 다운로드 하거나 검색할 수 없습니다.
> 제조사에서 직접 다운로드하거나 코드를 복사해야 합니다. - oracle

5.jstl을 사용할 준비
 1) www.mvnrepository.com 에서 jstl을 검색

 2) 파일을 다운로드

 3) WebContent/WEB-INF/lib 디렉토리에 파일을 복사

6.JSTL Core 기능
 1) JSTL 의 Core 기능을 사용하기 위한 준비
* jsp 페이지의 상단에 태그 라이브러리 설정 코드를 추가
`<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>`

* c로 시작하는 태그는 uri로 설정된 곳에서 해석
> uri가 인터넷 주소처럼 되어 있지만 실제로는 인터넷 주소가 아니고 jstl.jar 파일의 주소입니다.

 2) 변수 선언
`<c:set var="변수명" value="값"/>`
* 변수가 생성되서 page 객체의 attribute로 저장됩니다.
* el을 이용해서 출력이 가능

#### 7.실습 - 변수 생성과 출력 실습
 1) index.jsp 파일에 링크를 생성
`<a href="./el/jstl">jstl 기능 연습</a><br/>`

 2) ItemController 클래스의 doGet 메소드에 /el/jstl 요청을 처리하는 코드를 추가
```java
else if(command.equals("/el/jstl") && method.equals("GET")) {
	//출력할 페이지
	dispatcher = request.getRequestDispatcher("../views/jstl.jsp");
	dispatcher.forward(request, response);
}
```
 3) views 디렉토리에 jstl.jsp 파일을 만들고 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL의 core 기능을 사용하기 위한 태그 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!-- 변수 만들기 -->
<c:set var="num" value="200" />    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${num}</p>
</body>
</html>
```

8.조건문
```
<c:if test="${표현식}">
	표현식이 true일 때 수행할 문장을 작성
</c:if>
```
* jstl.jsp 파일에 추가
```jsp
<c:if test="${num > 100}">
	<p>크다</p>
</c:if>
<c:if test="${num <= 100}">
	<p>작다</p>
</c:if>
```
9.c:choose
```
<c:choose>
	<c:when test = "${표현식}">
		표현식이 true일 때 수행할 내용
	</c:when>
	...
	<c:otherwise>
		앞의 모든 표현식이 false일 때 수행할 내용
	</c:otherwise>
</c:choose>
```
* jstl.jsp 파일에 코드를 추가
```jsp
<!-- num이 100이면 실패 200이면 성공 -->
	<c:choose>
		<c:when test="${num==100}">
			<p>성공</p>
		</c:when>
		<c:when test="${num==200}">
			<p>실패</p>
		</c:when>
	</c:choose>	
```
10.반복문
 1) 일정한 횟수만큼 반복
```
<c:forEach begin="시작숫자" end="종료숫자" step="간격" var="변수명">
	반복할 내용
</c:forEach>
// step에 음수는 안됨
```
 2) 배열이나 리스트의 데이터를 순회
```
<c:forEach var="변수명" items="${배열이나 list의 이름}">
	반복할 내용
</c:forEach>
// 배열이나 list의 데이터가 변수에 하나씩 대입되면 반복할 내용을 수행
```

11.item/list 요청을 처리
* Item 클래스의 List를 출력

 1) Service 인터페이스에 목록보기를 위한 메소드를 선언
```
//아이템 목록을 가져오는 메소드
public List<Item> list(HttpServletRequest request);
```
 2) Service 클래스에 목록보기를 위한 메소드를 구현
```java
	@Override
	public List<Item> list(HttpServletRequest request) {
		List<Item> list = new ArrayList<Item>();
		

		Item item = new Item();
		item.setNum(1);
		item.setName("사과");
		item.setPrice(5000);
		item.setManufacture("충북 청송");
		item.setDescription("비타민 C가 풍부");
		list.add(item);
		
		item = new Item();
		item.setNum(2);
		item.setName("딸기");
		item.setPrice(4000);
		item.setManufacture("충남 논산");
		item.setDescription("하우스 딸기");
		list.add(item);
		
		item = new Item();
		item.setNum(3);
		item.setName("천혜향");
		item.setPrice(8000);
		item.setManufacture("제주");
		item.setDescription("감귤보다 맛있음");
		list.add(item);
		//아이템 목록을 리턴할 때 데이터의 개수 0 이면 조회된 데이터가 없는 것입니다.
		//List는 null을 리턴하지 않도록 해야 합니다.
		//List는 반복문에 사용하기 때문에 null을 리턴하면 예외가 발생합니다.
		return list;
	}
```
 3) ItemController 클래스의 doGet 메소드에 /item/list 요청을 처리하는 코드를 작성
```java
else if(command.equals("/item/list") && method.equals("GET")) {
			//데이터를 검색해서 조회해야 하는 경우는 데이터를 검색하고 그 결과를 request에 저장하고
			//결과 페이지로 포워딩
			List<Item> list = itemService.list(request);
			request.setAttribute("list", list);
			

			dispatcher = request.getRequestDispatcher("../views/list.jsp");
			dispatcher.forward(request, response);
		}
```
 4) views 디렉토리에 list.jsp를 만들고 list를 출력하는 코드를 작성
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 보기</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<h2 align='center'>아이템 목록</h2>
		<table align='center' border='1'>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>가격</th>
			</tr>	
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.num}</td>
					<td>${item.name}</td>
					<td>${item.price}</td>
				</tr>	
			</c:forEach>
		</table>
</body>
</html>
```

5.목록을 출력하고 상세보기 링크 만들기
* 예전에는 대부분 상세보기 링크에 파라미터로 기본키를 만들었습니다.
`<a href="./detail?num=1">제목</a>`

* 최근에는 이런 형태가 아니라 기본키 값을 url에 붙여서 만듭니다.
`<a href="./detail/1">제목</a>`
```jsp
		<!--  list 라는 이름으로 저장된 데이터를 item이라는 변수에 하나씩 대입  -->
		<c:forEach var="item" items="${list}">
			<tr>
			<!--  item에 있는 목록들을 출력  -->
			<td>${item.num}</td>
			<td><a href="./detail/${item.name}">${item.name}</a></td>
			<td>${item.price}</td>
			</tr>
		</c:forEach>
```























































