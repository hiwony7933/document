* 일반적인 python 이나 anaconda를 이용해서 설치한 파이썬 : C로 만들어진 python
 C 언어로 만든 라이브러리를 파이썬에서 사용할 수 있음.  
 C 언어의 문제점 : 소스코드를 가지고 실행 파일을 만들어서 배포   
   실행 파일을 만들 때 운영체제의 start up 코드가 포함되어야 한다.   
   실행 되는 프로그램이 운영체제 마다 다르다  

 Windows에서 실행되는 C언어는 MS-C이고 이 언어로 프로그램을 만드는 대표적 IDE가 Visual C++ 이고 이 Visual C++로 만들어진 프로그램을 실행시키기 위해서 재배포 패키지나 build tool이 설치되어 있어야 한다.  

 재배포패키지 = 운영체제의 버전이 다를수있으니(winxp, win7, win10 등)  

windows에서 python 실행 시 라이브러리가 설치되지 않는데  
visual c++ 14.0이 설치되어 있어야 하는데 설치되어 있지 않다는 에러 메시지가 출력되는 경우  
visual studio 2015 재배포 패키지 설치 : 설치해도 잘 안됨  
visual studio 2015 build tools 설치 : 설치해도 잘 안됨  
visual studio 최신 버전 설치 : visual studio comunity 버전 다운로드   



* 서로 다른 언어가 서로 통신하려면 pipe를 설치 해야됨 (java - python)  

* Kotlin, Scala --> java Class 만들어짐

* JAVA : Source --compile--> Class + JVM(Startup 코드 추가) 

  소스코드를 한번만 만들면 모든 운영체제에서 사용가능하다.  
  객체지향은 특성일 뿐  
  Linux에 Android를 입힌것.   
  Dos위에 GUI(Windows)를 입힌것 (Dos는 MS-C로 만들어짐)(visual C++는 MS-C 로 만들어졌다.)  

* C : Source --compile--> Obj (실행못함) --Build--> 실행프로그램+(운영체제의 Startup코드 추가)

  실행 은 운영체제가 함.  
  각 운영체제(windows, mac, linux 등)별로   
  ANSI-C : 표준C (Mac)  - C언어는 운영체제 만들려고 나온것 Unix가 표준임 (Mac OS 10)  
  Unix 위에 쓰기 쉽게 하기 위한 GUI(Mac OS 10)를 입힌것. (Unix는 상용)  
  Linux : Unix의 사용화를 반대하기 위해 만들어진것 (Unix 기반)  
  IoT 기반 언어   



분석
그 결과를 판정 해야하는게 어렵다. 



이상치에 대한 분석은 따로 진행 한다.

보고서 1 : 일반적인 분포
보고서 2 : 이상치 , special 어떤 상황에 따른 발생 경로, 날짜, 상황에 대한 분석 이 필요   

100보다 큰 데이터만 가져오기 등의 조건이 필요함.
`np.where(target>100)`

```python
# 샘플링 비율 조정
# np.where 는 array에서 조건에 맞는 데이터만 추출
# np.where(target==0)
# taget 행렬에서 값이 0인 데이터의 행번호를 리턴
# (행번호행렬, 자료형) 으로 결과를 리턴
# 행번호행렬만 가져오기 위해서 [0]을 추가 
class0 = np.where(target==0)[0]
class1 = np.where(target==1)[0]
print(len(class0))
print(len(class1))
# 데이터의 개수 확인 
```


텍스트마이닝 할때 많이 쓴다고함니다.   
ar의 요소를 y에 하나씩 대입하고 앞에 수식을 적용해서 결과를 가지고 다시 list를 만드는것   
`z_scores = [(y-meandata) / stdevdata for y in ar]`

```python
import numpy as np 
import pandas as pd

# array를 입력받아서 z 점수(평균의 표준편차3범위) 밖에 있는 데이터를 리턴해주는 함수
def z_score_outlier(ar) : 
    threshold = 3
    # 평균가져오기
    meandata = np.mean(ar)
    stdevdata =  np.std(ar)
    # ar의 요소를 y에 하나씩 대입하고 
    # 앞에 수식을 적용해서 결과를 가지고 다시 list를 만드는것 
    z_scores = [(y-meandata) / stdevdata for y in ar]
    return np.where(np.abs(z_scores) > threshold)
```