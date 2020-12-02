# 모델 튜닝



# open CV

```python
# OpenCV로 읽어 들이기
img = cv2.imread('../dataset/facedata/lady.png')

# 이미지 자르기
# y1:y2, x1:x2
im2 = img[150:450, 150:450] 

# 이미지 크기 변경하기
# img, (width, height)
im2 = cv2.resize(img, (600, 400))  

# 이미지 출력
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))  

# 이미지 출력
# OpenCV BGR(파녹빨) 인 반면 matplotlib RGB(빨녹파) 순서
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB)) 

# 이미지 저장하기
cv2.imwrite("../dataset/facedata/out.png", img)

```

## 얼굴 검출 

* 자동으로 얼굴에 모자이크 처리

* 인간의 얼굴이 어디 있는지 검출
* 사람의 얼굴을 검출하고 자동으로 모자이크 처리 사생활 보호를 위해 관계없는 사람의 얼굴 자동으로 모자이크 처리 얼굴 인식을 사용해 사람 얼굴이 있는 사진을 자동으로 수집


* 캐스케이드 파일 지정해서 검출기 생성하기
* OpenCV는 Haar-like 특징 학습기라고 부르는 머신러닝을 사용해 얼굴 인식
* 캐스케이드 파일(얼굴 요소 DB)를 사용해 눈, 코, 잎과 같은 요소의 위치 관계를 확인하고 얼굴인지 확인
  * gray 스케일로 변형 후에 명암의 차이를 이용해서 눈 코 잎의 관계를 파악함 

* 정면 얼굴 검출기

```python
# 정면 얼굴
cascade_file = "./facedata/haarcascade_frontalface_alt.xml" 

# 검출기는 캐스캐이드 파일을 지정해 다양한 물체 검출하는 객체 생성
cascade = cv2.CascadeClassifier(cascade_file) 
```

<https://github.com/opencv/opencv/tree/master/data/haarcascades>

haarcascade_eye.xml	    
haarcascade_eye_tree_eyeglasses.xml  
haarcascade_frontalcatface.xml     
haarcascade_frontalcatface_extended.xml  
haarcascade_frontalface_alt.xml	  
haarcascade_frontalface_alt2.xml	  
haarcascade_frontalface_alt_tree.xml  
haarcascade_frontalface_default.xml  
haarcascade_fullbody.xml  
haarcascade_lefteye_2splits.xml  
haarcascade_licence_plate_rus_16stages.xml  
haarcascade_lowerbody.xml  
haarcascade_profileface.xml  
haarcascade_righteye_2splits.xml  
haarcascade_russian_plate_number.xml  
haarcascade_smile.xml  
haarcascade_upperbody.xml  

```python
# 이미지를 읽어 들이고 그레이스케일로 변환하기
# 밝은 부분은 흰색, 어두운 부분은 검은색. 코는 밝은 부분, 코의 양옆은 어두운 부분
# 얼굴 영역중에 중앙에 밝은 부분이 있다면 얼굴로 판단. 각 요소의 명암패턴을 결합해 얼굴의 형태 확인
filepath = '../dataset/facedata/girl.jpg'
img = cv2.imread(filepath)
# BGR2GRAY gray로 사진이 변경됨 
img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) 

# 얼굴 인식하기(cascade.detectMultiScale() 메서드를 사용)
# 그레이스케일 이미지데이터, 얼굴 인식영역의 최소 크기 지정
face_list = cascade.detectMultiScale(img_gray, minSize=(150,150)) 
print(face_list)

#출력
[[319 308 405 405]]
```

```python
# 결과 확인하기 
if len(face_list) == 0:          # 검출 결과를 확인 후 리스트가 비어 있으면 메시지 출력 후 종료
    print("얼굴 인식 실패")
    quit()

# 인식한 부분 표시하기    
# 검출한 얼굴 영역에 붉은색 테두리를 랜더링
for (x,y,w,h) in face_list:
    print("얼굴의 좌표 =", x, y, w, h)
    red = (0, 0, 255)
    cv2.rectangle(img, (x, y), (x+w, y+h), red, thickness=20)

# 이미지 출력하기
cv2.imwrite("../dataset/facedata/face-detect.png", img)
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
plt.show()
```

## 모자이크 처리 

* mosaic.py 모듈로 사용 
* 보간법 사용 - 크기를 늘리거나 줄이는것

### 모자이크 처리 예제 

```python
# 함수 정의 
# mosaic.py
import cv2

def mosaic(img, rect, size):
    # 모자이크 적용할 부분 추출하기
    (x1, y1, x2, y2) = rect
    w = x2 - x1
    h = y2 - y1
    i_rect = img[y1:y2, x1:x2]

    # 축소하고 확대하기
    i_small = cv2.resize(i_rect, (size, size))
    i_mos = cv2.resize(i_small, (w, h), interpolation=cv2.INTER_AREA)  # 보간법
    
    # 모자이크 적용하기
    img2 = img.copy()
    img2[y1:y2, x1:x2] = i_mos
    return img2
```

```python
# import matplotlib.pyplot as plt
import cv2
from mosaic import mosaic as mosaic

# 이미지를 읽어 들이고 모자이크 처리하기
img = cv2.imread("../dataset/facedata/cat.png")
mos = mosaic(img, (0, 50, 250, 450), 10) # 좌표지정에 대해서 주의 해야 할것 x1 좌하, y1 좌상 

# 이미지 출력하기
cv2.imwrite("../dataset/facedata/cat-mosaic.png", mos)
plt.imshow(cv2.cvtColor(mos, cv2.COLOR_BGR2RGB))
plt.show()
```


## 사람 얼굴에 자동으로 모자이크 처리 하기 

```python
# 사람 얼굴에 자동으로 모자이크 처리하기
import matplotlib.pyplot as plt
import cv2
from mosaic import mosaic as mosaic

# 캐스케이드 파일 지정해서 검출기 생성하기 
cascade_file = "./facedata/haarcascade_frontalface_alt.xml"
cascade = cv2.CascadeClassifier(cascade_file)

# 이미지를 읽어 들이고 그레이스케일로 변환하기 
img = cv2.imread("./facedata/family.jpg")
# img = cv2.imread("myphoto.jpg")
img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# 얼굴 검출하기 
face_list = cascade.detectMultiScale(img_gray, minSize=(150,150))
if len(face_list) == 0: quit()

# 인식한 부분에 모자이크 처리하기
for (x,y,w,h) in face_list:
    img = mosaic(img, (x, y, x+w, y+h), 10)

# 이미지 출력하기
cv2.imwrite("./facedata/family-mosaic.png", img)
plt.imshow(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
plt.show()
```

* 이미지 회전 

```python
# OpenCV의 얼굴 검출은 옆모습과 기울어진 얼굴을 잘 검출 못함
import matplotlib.pyplot as plt
import cv2
from scipy import ndimage

# 검출기 생성하고 이미지 읽어 들이기
cascade_file = "./dataset/facedata/haarcascade_frontalface_alt.xml"
cascade = cv2.CascadeClassifier(cascade_file)
img = cv2.imread("./dataset/facedata/girl.jpg")

# 얼굴 검출하고 영역 표시하기
def face_detect(img):
    img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    face_list = cascade.detectMultiScale(img_gray, minSize=(300,300))
    # 인식한 부분 표시하기
    for (x,y,w,h) in face_list:
        print("얼굴의 좌표 =", x, y, w, h)
        red = (0, 0, 255)
        cv2.rectangle(img, (x, y), (x+w, y+h), red, thickness=30)

# 여러 각도의 이미지를 만들고 테스트하기 
# 34도까지 인식
for i in range(0, 9):
    ang = i * 10
    print("---" + str(ang) + "---")
    img_r = ndimage.rotate(img, ang)
    face_detect(img_r)
    plt.subplot(3, 3, i + 1)
    plt.axis("off")
    plt.title("angle=" + str(ang))
    plt.imshow(cv2.cvtColor(img_r, cv2.COLOR_BGR2RGB))
        
plt.show()
```


