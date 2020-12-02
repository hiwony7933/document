
운영체제 : MAC OS 10 

Anaconda3 Package 사용

<https://anaconda.org/conda-forge/dlib>


1. 안됨

`pip install dlib` 


2. conda install 실행 

conda 환경변수가 안됨

```
 ✘ jw@JW-MacBookPro  ~  conda --V
zsh: command not found: conda
```

conda 환경변수 확인해보자. 

```
jw@JW-MacBookPro  $PATH
zsh: no such file or directory: :/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
```

conda 환경변수 설정이 안되어 있다 OTL..

```
jw@JW-MacBookPro  echo 'export PATH="/users/jw/opt/anaconda3/bin:$PATH"' >> ~/.zshrc
```

환경변수 추가 : Users/jw/opt/anaconda3/bin

```
jw@JW-MacBookPro  $PATH
zsh: no such file or directory: Users/jw/opt/anaconda3/bin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/3.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
jw@JW-MacBookPro  source ~/.zshrc
```

버전확인

```
jw@JW-MacBookPro  conda -V
conda 4.8.2
```

dlib 설치 끝~

```
 jw@JW-MacBookPro  conda install -c conda-forge dlib
```