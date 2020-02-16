### XHTML

1.태그에 사용할 수 있는 공통 속성  
 1) id: 태그를 구분하기 위한 식별자 - 중복될 수 없습니다.  
 2) class: 여러 개의 태그를 그룹화하기 위한 속성 - 중복 가능  
 3) name: 서버에게 전송할 때 서버에서 구분하기 위한 위름 - 중복 가능  

2.태그 작성 시 권장 사항

 1) 태그 이름은 소문자로 작성  
 2) 태그 다음에 요소를 사용하는 경우 종료 태그를 생략 불가능  
`<태그>요소</태그>`  
 3) 속성 이름은 소문자로 작성  
 4) 닫는 태그가 없는 태그를 만들 때는 <태그/>로 작성  
 5) 속성을 사용하는 경우 값을 생략하지 않도록 작성  
 6) 잘못된 중첩을 하지 않도록 작성  
 7) 속성에 값을 설정할 때 '나 "로 감싸서 작성'   

* HTML은 비구조적이라서 위의 규칙을 적용하지 않아도 출력은 됩니다.

```html
<a href="http://www.daum.net">다음</a>
<a href="http://www.daum.net">다음 도 가능
<a href="http://www.daum.net"><b>다음</b></a>
<a href="http://www.daum.net"><b>다음</a></b> 가능
```

3.주석

`<!-- 주석 내용 -->`

4.문서 구조

```html
<!DOCTYPE 내용> : DTD - 문서에 대한 설명
<html> : html 문서 시작
<head></head> : 문서에 대한 정보 설정
<body></body> : 문서에서 출력되는 부분
</html>
```

5.태그 분류  
 1) 블록 요소: 태그가 배치되면 좌우에 다른 태그를 배치할 수 없는 요소  
`h1 ~ h6, p, div, ul, al, dl 등`

 2) 인라인 요소: 태그 주위에 다른 인라인 요소가 배치될 수 있는 요소
`img, span, a 등`

### XHML 요소

1.meta

* 문서에 대한 정보를 작성하는 태그로 head 부분에 작성

`<meta charset="인코딩 방식">` : 문서의 인코딩 설정, 잘못되면 한글이 깨쳐서 표현됩니다.

`<meta name="keywords" content="키워드, 키워드...">` : 검색 엔지이 키워드로 검색했을 때 검색되도록 설정

`<meta http-equiv="refresh" content="시간 url=이동할 경로">`: 시간이 지나면 경로로 리다이렉트

`<meta http-equiv="pragma" content="no-cache">`: 이 페이지는 캐싱하지 않음

* 캐시는 이전에 다운로드 받았던 내용을 브라우저에 저장하고 있다가 다음에 요청하면 서버에서 가져오지 않고 브라우저 내부에 있는 것을 출력

* viewport는 반응형 웹 디자인에서 설명

2.title

* 문서의 제목을 만들어주는 태그로 head 에 작성
* 브라우저의 탭에 보여지고 bookmark에 추가할 때 기본 텍스트가 됩니다.

3.eclipse에서 웹 프로젝트를 만들고 실행
 1) dynamic web project를 생성

* 프로젝트 이름을 작성할 때 소문자와 숫자를 조합 : 웹 주소로 설정할 수 있기 때문에 

 2) 프로젝트의 WebContent 디렉토리에 html, css, javascript은 만들어야 합니다.

* 다른 곳에 만들면 실행되지 않습니다.

 3) WebContent 디렉토리에 html 파일 추가

* 디렉토리를 선택하고 마우스 오른쪽을 클릭해서 html을 추가

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 웹 사이트</title>
</head>
<body>

</body>
</html>
```

 4) html 파일을 선택하고 마우스 오른쪽 클릭 후 [Run As] - [Run On Server]를 클릭

* 첫번째 실행이면 WAS를 선택 : apache tomcat 9.0
* 실행했는데 포트에러가 발생하면 project explorer 에서 Servers 탭의 server.xml 파일을 열어서 아래 부분을 수정 

- 기본값이 -1이면 다른 양수 포트번호로 수정
  `<Server port="9001" shutdown="SHUTDOWN">`

- port의 값이 8080이면 다른 번호로 수정
  `<Connector connectionTimeout="20000" port="9000" protocol="HTTP/1.1" redirectPort="8443"/>`

http://211.183.6.60:9000/web0203/first.html

4.link, style

* 스타일시트 적용을 위한 태그

`<link rel="stylesheet" href="외부 스타일시트 파일 경로">` : 외부에 스타일시트 파일을 작성한 경우 적용

`<style>스타일시트 내용</style>`: 내부에 스타일시트 내용을 작성하는 경우

5.script

`<script src="외부 스크립트 파일 경로"></script>`

`<script>스크립트 내용</script>`

6.제목 태그

`<h1>내용</h1>`
`<h1 - 6>`: 숫자가 작을 수록 글자 크기가 큼

* h1 은 큰 제목으로 페이지 내에서 한 번만 사용하는 것을 권장
* 블록 태그


7.문단(단락) 태그	

`<p>내용</p>`

* 블록 태그

8.줄 바꿈 태그
`<br/>`

9.강조태그
`<b>텍스트</b>`: 굵게
`<i>텍스트</i>`: 이탤릭 - 기울림

10.특수문자
`&nbsp;` : 공백
`&lt;` : <
`&gt;` : >

* xml 이나 html에서 부등호는 태그를 나타내는 기호라서 잘못사용하면 태그로 해석을 합니다.
* 부등호를 화면에 출력하고 하면 특수문자 형식으로 사용해야 합니다.

`&amp;` : &
`&quot;` : "

11.입력한 그대로 출력
`<pre>내용</pre>`

12.문단 중앙 정렬
`<h1 align='center'>내용</h1>`

* 블록 태그(h1, p 태그)에서는 align 속성을 이용해서 가운데, 왼쪽, 오른쪽 배치가 가능

`<center>내용</center>`

13.하이퍼링크 태그

* a 태그
  `<a href="링크">내용 또는 <img src="/Users/jw/Documents/frontend 강의/이미지 파일 경로" /></a>`
* 인라인 태그 : 다른 태그가 옆에 배치 될 수 있음
* href 속성: 클릭했을 때 이동할 경로
* 웹에서 검색이나 클릭을 이용해서 내부 데이터 수집을 하고자 하는 경우에 이 태그의  href 속성의 값을 찾아와야 합니다.
* target 속성: 이동할 때 브라우저 실행 방법
  `_blank`: 새로운 탭으로 열기
  `_self`: 현재 탭에 열기
  다른 영역의 name이나 id: 다른 영역에 열기


14. 목록 태그
     1) 순서없는 목록 태그 : ul

```html
<ul type="disc, circle, square">
	<li>목록</li>
	<li>목록</li>
</ul>
```

 2) 순서있는 목록 태그 : ol

```html
<ol type="1, A, a, 로마자대문자, 로마자소문자">
	<li>목록</li>
	<li>목록</li>
</ol>
```

* stylesheet를 이용하면 글머리 기호로 일본어 나 그림이 가능

 3) 정의형 목록

```html
<dl>
	<dt>정의할 단어</dt>
	<dd>설명</dd>
<dl>
```

15.이미지 출력 태그
`<img />` : 인라인 태그

* src 속성: 이미지 파일의 경로
* width, height: 너비와 높이로 숫자로 픽셀의 크기를 입력해도 되고 백분율로 화면 크기에 대한 비율로 설정해도 됩니다.
* border: 경계선으로 두께를 설정
* hspace, vspace: 좌우와 상하 여백 설정
* align: 다른 태그의 배치 설정으로 left 나 right를 이용하면 좌우에 여러 줄의 콘텐츠 배치 가능
  top, bottom, middle은 콘텐츠의 상하 배치
* 이미지 파일은 별도의 디렉토리에 모아놓고 상대경로의 개념으로 출력
  이미지가 많다면 별도의 파일서버를 만들고 절대경로를 이용하기도 합니다.
* 이미지나 사운드 파일의 경우는 html을 다운로드 받아서 출력하고 그 다음 다시 이미지나 사운드를 다운로드 받아서 출력을 합니다.
* 변하지 않는 이미지나 사운드의 경우는 캐시 기능을 적절히 이용하면 출력을 빠르게 할 수 있습니다.
