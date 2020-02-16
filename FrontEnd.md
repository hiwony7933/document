## Web Front End
* Web - Web Browser
* Front End - 사용자에게 보여지는 부분
### HTML ( 4.01 , - 출력만)
* Design - CSS
* Dynamic(동적처리) - JavaScript

#### HTML(Markup) + JavaScript(Application) --> HTML 5 

#### HTML 5 나오게 된 이유 (기반기술)
* Plug in 없이 동작하는 Web Application 제작 하자
* Server (Back_End) 와 함께 공부 한다. 

* HTML5 공부할 때 Application 만드는 방법이 있는 교재, 강의 선택해야됨 (Web Game등 제작하는거)
* XML, JSONE은 FrontEnd가 아니다 (데이터임) 


**JavaScript --(객체지향)--> TypeScript**
프레임워크 (흐름이 있고, 유행이 있다)

1) JQuery 
* 현재 나와있는 웹의 90% 사용
* 나오게 된 이유(Cross Browsing) - 모든 브라우저에서 동일한 컨텐츠를 즐기게하자 

2) BootStrap
 * 반응형 웹을 만들기 쉽다. - 

3) Vue, React, Angular
 * MVC 구현  

4) Node.js 
* 서버 

> ionic, react native, phone gap -> 모바일 앱 제작 라이브러리
> JQuery Mobile, Sencha -> 모바일 웹 제작 라이브러리 



Linux -> GUI -> Win API, Mac OS X
* Web Broswer로 구현 -> 삼성(Tizen), LG(Web OS)... Application Web 기술로 제작함. 
* Web Broswer 기반 노트북 -> Crome Book 

WebServer  WAS(배포,서버) - 서버용언어 -> html



 

### Java Web Project 배포
1.프로젝트를 war 파일로 export를 합니다.

2.export 된 war 파일을 tomcat 디렉토리의 webapps 디렉토리에 복사

3.톰캣 실행

> ip: 211.183.6.60
> tomcat port: 9000
> 프로젝트이름: web0203

http://211.183.6.60:9000/web0203/image.html



웹 접근성 강화: 장애 여부에 상관없이 동일한 콘텐츠를 사용할 수 있도록 해야 한다.

반응형 웹 디자인: 브라우저 화면 크기에 상관없이 동일한 콘텐츠를 사용할 수 있도록 해야 한다.

크로스 브라우징: 브라우저 종료에 상관없이 동일한 콘텐츠를 사용할 수 있도록 해야 한다.


**HTML
1.imagemap
=>image의 특정 좌표를 클릭하면 하이퍼링크를 통해서 이동하도록 해주는 것
1)image에 usemap 이라는 속성을 이용해서 이름을 1개 생성

2)map 생성

<map name="1번에서 사용할 이름">
	<area shape="rect, circle, poly" coords="좌표를 입력" href="이동할 URL" />


</map>

=>rect는 coords 에 왼쪽상단의 X, Y 좌표 그리고 오른쪽 하단의 X, Y 좌표를 설정
=>circle은 원의 중점의 X, Y 좌표 그리고 반지름을 설정
=>poly는 2개씩 쌍으로 무제한 설정 가능

2.table 관련 태그
=>table 태그의 내용은 python의 pandas의 DataFrame으로 바로 변환 가능
=>여러 개의 데이터를 행과 열로 구분해서 출력할 때 이용

<table>: 테이블
<tr>: 하나의 행
<th>: 하나의 셀 - 제목 셀
<td>: 하나의 셀 - 일반 셀


=>table을 그냥 만들면 경계선이 보이지 않습니다.
경계선을 출력하고자 하면 table 태그에서 border 속성에 경계선의 두께를 설정 - css에서도 가능
=>table 의 align 속성은 테이블 자체의 맞춤이고 th 나 td 에서의 align은 내용의 맞춤
=>table 이나 th, td 등에는 width 속성 이용해서 너비 설정 가능 
=>table 이나 tr 에는 height 속성 이용해서 높이 설정 가능 

=>td 나 th 에서 rowspan="합쳐질 셀의 개수" 이나 colspan="합쳐질 셀의 개수" 를 이용해서 셀 병합이 가능

=>thead, tfoot, tbody
thead로 tr을 감싸면 제목 행이 되서 맨 위에 출력
tfoot으로 tr을 감싸면 바닥글 행이 되서 맨 아래에 출력
tbody로 tr을 감싸면 내용행이 되서 thead 뒤에 출력
이 태그들을 이용하면 문서의 구조를 쉽게 이해할 수 있으며 음성 브라우저를 사용하는 경우 셀을 읽을 때 thead에 설정된 셀을 같이 읽어 줍니다.

3.fieldset & legend
=>fieldset 은 묶어서 경계선을 만들고자 하는 경우 사용
=>legend는 fieldset 안에서 경계선의 제목을 만들 때 사용

4.form 태그
=>사용자의 입력을 받아서 서버에게 전송하기 태그
=>form 안에서 name을 가진 속성들은 서버에게 전송됩니다.

1)form

<form action="전송받을 서버의 URL" method="get 또는 post를 설정하는데 전송방식"
enctype="multipart/form-data">


</form>
=>action은 form 안의 데이터를 전송받아서 처리할 URL을 작성하는데 생략하면 현재 URL이 자동으로 설정됩니다.
=>method는 파라미터(name을 가진 입력 도구)를 전송하는 방식을 설정하는데 get 은 URL에 입력한 내용을 표시해서 전송하고 post는 header에 숨겨서 전송합니다.
검색 창에서 입력한 검색어는 get 방식을 이용해서 전송하고 로그인 창에서 입력한 아이디와 비밀번호는 post 방식으로 전송

2)label
=>텍스트를 출력할 때 사용하는 태그
<label>출력할 내용</label>
=>for 속성에 다른 입력도구의 id를 설정하면 모바일 웹에서 레이블을 선택해도 입력도구를 선택한 것과 동일한 효과를 만들어 줍니다.

3)input
=>입력도구
=>type 속성에 설정할 수 있는 값: text, button, submit, reset, password, radio, checkbox, file, image, hidden
HTML5에서는 모바일을 위한 속성들이 추가

text: 한 줄 입력도구

password: 입력한 내용이 아니라 특수문자로 보여지는 한 줄 입력도구

radio: 여러 개 중에서 하나를 선택하도록 할 때 사용하는 것으로 name이 같으면 같은 그룹

checkbox: 여러 개 중에서 여러 개를 선택하도록 할 때 사용하는 것으로 name이 같아야 하나로 묶어서 서버에게 전송

file: 파일을 선택하기 위한 입력도구

button: 눌러서 어떤 동작을 위한 입력도구 - button 보다는 그림을 많이 사용

submit: 폼의 데이터를 서버로 전송해주는 버튼

reset: 폼의 데이터를 전부 클리어해주는 버튼

image: image를 배치할 수 있는 버튼

hidden: 화면에 출력되지는 않지만 서버에게 데이터를 전송하고자 할 때 사용

4)textarea
=>여러 줄의 데이터를 입력받고자 할 때 사용
=>rows 와 cols 속성을 이용해서 초기 크기를 설정

5)select
=>여러 개의 항목 중 하나를 선택할 때 사용

<select name="">
	<option value="서버에게 넘어가는 값">텍스트</option>
	<option value="서버에게 넘어가는 값">텍스트</option>
</select>


6)form에 입력도구 들을 배치할 때 입력하는 순서대로 배치하는 것이 좋고 필수 입력란을 먼저 배치하고 선택적 입력 란을 뒤에 배치하는 것이 좋습니다.
여러 개의 입력을 받는 경우 페이지를 나누는 것도 고려

5.div 와 span
=>영역을 생성하는 태그
=>div 는 블록 태그이고 span은 인라인 태그

6.iframe
=>다른 문서를 출력하기 위한 태그
=>프로젝트 내의 문서만 출력 - 외부 링크도 출력이 가능하지만 보안의 문제때문에 제한적입니다.
사이트에서 iframe에 출력할 수 없도록 설정할 수 있습니다.
=>width 와 height 속성을 이용해서 크기를 설정
=>name 속성을 이용해서 이름을 설정 : a 태그에서 target을 iframe의 name으로 설정하면 하이퍼링크의 내용을 iframe에 출력합니다.
=>src 속성을 이용해서 출력할 문서를 지정

**css
=>웹페이지에 디자인이라는 시각적 가치를 부여하기 위한 언어
=>표준은 2.1 과 3.0
3.0에서는 모든 시각적 효과는 태그의 속성을 이용하지 않고 css로 만드는 것을 권장

1.사용방법
1)External Style Sheet
=>외부에 스타일시트 파일을 만들고 링크를 걸어서 사용하는 방식 - 권장
=>Linked Style 과 Import Style로 나눔

2)Internal Style Sheet
=>html 파일 안에 <style></style>을 만들어서 태그 안에 내용을 작성하는 방식

3)Inline Style Sheet
=>태그 안에 style 이라는 속성을 이용해서 작성하는 방식 - 비추천

4)외부에 만드는 것을 권장하는 이유는 프로그램의 소스는 역할 별로 분리하는 것이 유지보수에 유리하기 때문입니다.

2.외부 스타일시트 연결
1)<link rel="stylesheet" href="css 파일 경로">

2)<style type="text/css">
@import url("파일 경로")
</style>

3)상대경로
./: 현재 디렉토리
../: 상위 디렉토리

WebContent/design/stylesheet.html : ./../resources/css/extern.css

WebContent/resources/css/extern.css

3.css 작성 방법
선택자{속성:값; 속성:값....}
=>속성과 값은 쌍으로 만들어져야하고 콜론으로 구분
=>스타일시트 내의 예약어들에 따옴표 붙이면 안됩니다.

4.selector(선택자)
=>html 문서 내의 DOM 객체를 선택하기 위한 문법
1)*
=>모든 객체를 선택

2)tag
=>태그 선택자

3).class이름
=>클래스 선택자

4)#id
=>id 선택자

5)class 는 동일한 디자인을 적용하기 위해서 설정하고 id는 1개를 구분하기 위해서 설정
id 와 유사한 것으로 xpath가 있는데 xpath는 개발자가 설정하는 것이 아니고 브라우저가 특정 DOM 객체를 찾기 위해서 사용하는 개념으로 유일무이합니다.

6)속성 선택자
선택자[속성]: 선택자 중에서 속성이 존재하는 것만 선택
선택자[속성="값"]: 선택자 중에서 속성의 값이 일치하는 것만 선택

7)가상 클래스
=>선택자 뒤에 :을 추가하고 사용
link : 링크에 적용
visited : 방문한 링크에 적용

hover : 마우스가 올라오면
active : 마우스로 누르면

focus :  포커스가 오면
checked : 체크하면
enabled : 활성화되면
disabled : 비활성화되면

8)하위 선택자
선택자 다른선택자
=>선택자 안에 포함된 다른 선택자를 모두 선택
p a: p 태그 안에 있는 모든 a 태그

선택자 > 다른선택자
=>선택자 바로 아래 레벨에 있는 다른 선택자
p > a : p 태그 바로 아래 레벨에 존재하는 a 태그


<p><a href=""></a></p>
<p><span><a href=""></a></span></p>

p a : a 태그 2개 모두 선택
p > a : 첫번째 a 태그는 선택되지만 두번째 a 태그는 선택안됨 

=>부모 선택자 와 자식 선택자가 같이 있는 경우 부모 선택자를 지워도 선택이 됩니다.
부모 선택자를 삭제하면 더 많이 선택되기는 하지만 선택이 안되지는 않습니다.

9)다중 선택자
,를 하고 선택자를 입력하면 나열된 모든 선택자를 선택
=>a 태그와 div 태그를 같이 선택하고자 하면 
a,div{속성:값;}

5.우선 순위
1)하나의 DOM에 동일한 속성의 값을 여러번 지정하면 마지막에 적용된 값만 남습니다. 
2)inline > id 선택자 > class 선택자(가상 클래스) > tag 선택자

6.단위
=>css에서는 단위 생략을 못함
1)절대 단위: 어떤 환경에서든 동일한 크기
=>인쇄할 때 이용
=>pt(1/72 inch), pc(파이카, 12pt), in, cm, mm

2)상대 단위: 환경에 따라서 크기가 다르게 보임
=>모니터로 출력할 때 이용
=>px(해상도 기준), ex(x 의 높이), em(font - size 기준), %

3)기본크기는 12pt, 16px 정도가 기본

4)픽셀을 em 단위로 변환
www.pxtoem.com 에서 확인 가능

7.타이포그라피(단락의 텍스트 대한 설정)
1)폰트 설정
font-family:글꼴;
글꼴을 하나가 여러 개 지정하는 경우가 있는 이것은 첫번째 글꼴이 없을 때 두번째 글꼴을 적용하기 위해서 입니다.

2)폰트 크기 설정
font-size:숫자와 단위의 조합

3)줄 간격
line-height

4)글자 두께
font-weight
=>900이 제일 두껍고 100이 제일 얇음

5)글꼴 스타일
font-style 인데 italin 만 지정 가능

6)font-variant
=>영문 소문자를 작은 대문자로 출력하기 위해서 사용하는 속성으로 small-caps를 설정하면 작은 대문자로 출력됩니다.

7)font
=> 앞의 6개 속성을 순서대로 한꺼번에 설정할 때 사용

8)direction
=>텍스트의 쓰기 방향을 설정하는 것으로 ltr, rtl을 설정할 수 있습니다.

9)text-indent
=>첫 줄 들여쓰기 설정

10)text-align
=>단락에서의 좌우 맞춤
=>left, right, center 로 설정

11)vertical-align
=>인라인 요소끼리의 상하맞춤
=>sub, super, top, bottom, middle, baseline 등이 있음

12)text-decoration
=>텍스트에 밑줄이나 취소선 표시
=>none, underline, overline, line-through 등
=>a 태그의 밑줄을 없애고자 하는 경우에 none으로 설정

13)text-overflow
=>div 나 span 같은 box 안에 긴 문자열을 입력한 경우 영역을 넘어서는 문자열을 어떻게 표시할 것인가를 설정
=>잘라버리는 clip 이 있고 ... 으로 보여주는 ellipsis 가 있습니다.

14)text-transform
=>영문 대소문자 변환
=>uppercase, lowecase, capitalize

15)letter-spacing
=>글자 간격

16)text-shadow
=>그림자 효과 - css3에서 도입
=>상하거리 좌우거리 색상 으로 설정하고 ,를 이용해서 여러 개 설정 가능

8.목록
1)목록의 스타일 설정: 글머리 기호 설정
list-style-type:스타일
none, disc, circle, square, decimal, dicimal-leading-zero, upper-alpha, lower-alpha, upper-roman, lower-roman, upper-latin, lower-latin, lower-greek, armenian, hiragana, katakana 등

2)글머리 기호에 그림 설정
list-style-image:url("이미지 파일 경로")

3)들여쓰기 효과
=>글머리기호가 앞으로 튀어나오게 하는 효과
list-style-position: inside 또는 outside

9.글자 색상
color:색상값;
=>일반적인 색상은 이름으로 가능 : red, blue 등
=>16진수 6자리 가능: #000000 ~ #ffffff
빨강2자리녹색2자리파랑2자리
16진수 3자리로도 가능
#012 : #001122
예전의 그래픽 카드는 많은 양의 색상을 표시할 수 없어서 r,g,b 값을 중복해서 적용
=>rgb(정수, 정수, 정수)
=>rgb(백분율, 백분율, 백분율)
=>hsl(색조, 채도, 명도)

10.배경
1)색상
background-color: 색상값;

2)배경이미지
background-image:url("이미지 파일 경로");

3)배경 이미지 반복 여부
=>배경 이미지가 작을 때 설정
background-repeat: no-repeat | repeat | repeat-x | repeat-y

4)배경 이미지 위치
background-position: [left, right, 값] [top, bottom, 값];

5)배경 이미지 스크롤 여부
background-attachment: scroll|fixed

6)background를 이용해서 한꺼번에 설정 가능
background : background-color background-image background-repeat background-position background-attachment;

7)css 나 javascript에서 여러 개의 값을 넘겨야 하는 경우 뒤에서부터 생략 가능

8)색상에 그라데이션이 가능
=>색상을 만들 때 linear-gradient 나 radial-gradient를 이용해서 생성
=>http://colorzilla.com/gradient-editor 에서 색상 생성 가능

9)vendor-prefix
=>css3에는 아직 표준으로 채택되지 않았는데 브라우저 별로 제공하는 기능들이 있습니다.
이러한 기능은 사용을 할 때 브라우저 이름을 명시해야 합니다.
=>브라우저 이름이 없으면 구형 브라우저로 판단
chrome, safari : -webkit
firefox: -moz
explorer: -ms
opera: -o

=>모든 브라우저에 적용을 할려면 각 vendor-prefix를 이용해서 전부 작성해야 합니다.

11.box model
=>사각 영역으로 div 나 span 등 으로 만든 영역
1)요소
width, height, border(경계선), margin(다른 콘텐츠와의 여백 - border 와 다른 콘텐츠와의 여백), padding(내부에서 콘텐츠와의 여백 - border 와 contents 와의 여백)
=>일반적인 브라우저의 box 영역 가로 크기: width + margin + padding + border 
=>IE 의 box 영역 가로 크기: width 크기 안에 padding이 포함됩니다.
일반적인 크기 설정을 하게되면 IE에서 콘텐츠가 작게 보입니다.

2) margin

- 2개의 contents에 margin이 둘다 설정된 경우 둘다 적용되는 것이 아니고 큰 거 하나에만 적용됨

3) magin 설정

- margin: 하나의 숫자 - 상하좌우 모두 동일하게 적용

- margin: 4개의 숫자 - 상하좌우 모두 다르게 적용

- margin-left, margin-right, margin-bottom, margin-top을 이용해서 각각 설정도 가능

4) padding 설정

- margin과 동일

5) border: 경계선

=>border-width: 두께

=> border-top-width, border-left-width, border-right-width, border-bottom-width를 이용해서 각각 적용이 가능

=>border-color: 색상, 적용방법은 width와 동일

=>border-style: 선모양
none, dotted, dashed, solid, double, groove, ridge, inset, outset 등

=>border:width style color  한꺼번에 설정

6) 애플리케이션에서의 버튼 누르는 효과 구현
=> 이미지를 이용해서 이미지 교체
=> 이미지를 이동
=> 테두리의 색상을 변경


7) css3에서는 border-radius 기능 추가됨
=> 테두리를 둥그렇게 만들 수 있음



**HTML5와 CSS3의 가장 큰 목적은 외부 플러그인이나 애플리케이션 없이 웹 애플리케이션을 구현하는 것이 목적

