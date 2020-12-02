

출처  <https://goodtogreate.tistory.com/entry/IPython-Notebook-%EC%84%A4%EC%B9%98%EB%B0%A9%EB%B2%95>

Jupyter notebook 부팅시 자동 실행 

Service 생성

`sudo vim /etc/systemd/system/jupyter.service`

아래의 내용을 입력한다.

```bash
[Unit]
Description=Jupyter Notebook Server

[Service]
Type=simple
PIDFile=/run/jupyter.pid
User=<username>
ExecStart=/opt/anaconda3/jupyter-notebook
WorkingDirectory=/your/working/dir

[Install]
WantedBy=multi-user.target
```

ExecStart설정은 anaconda의 경우 /opt/anaconda3/bin/jupyter-notebook으로 설정한다. 각자 상황에 맞춰서 설정해야 한다.

service 등록


`systemctl daemon-reload`

`systemctl enable jupyter.service`

`systemctl start jupyter.service`

service 상태 알애내기

`sudo systemctl status jupyter.service`

```bash
● jupyter.service - Jupyter Notebook
   Loaded: loaded (/etc/systemd/system/jupyter.service; enabled; vendor preset: enabled)
   Active: active (running) since Wed 2019-05-08 15:07:55 KST; 17min ago
 Main PID: 2057 (jupyter-noteboo)
    Tasks: 1 (limit: 4915)
   CGroup: /system.slice/jupyter.service
           └─2057 /home/jemin/anaconda3/bin/python /home/jemin/anaconda3/bin/jupyter-notebook

 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.357 NotebookApp] JupyterLab extension loaded from /home/jemin/anaconda3/lib/python3.7/s
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.357 NotebookApp] JupyterLab application directory is /home/jemin/anaconda3/share/jupyte
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.358 NotebookApp] Serving notebooks from local directory: /home/jemin/development
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.358 NotebookApp] The Jupyter Notebook is running at:
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.358 NotebookApp] http://192.168.0.4:8888/
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [I 15:07:56.358 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to
 5월 08 15:07:56 jemin jupyter-notebook[2057]: [W 15:07:56.360 NotebookApp] No web browser found: could not locate runnable browser.
 5월 08 15:20:16 jemin jupyter-notebook[2057]: [I 15:20:16.468 NotebookApp] 302 GET / (192.168.0.2) 1.18ms
 5월 08 15:20:16 jemin jupyter-notebook[2057]: [I 15:20:16.470 NotebookApp] 302 GET /tree? (192.168.0.2) 0.28ms
 5월 08 15:20:18 jemin jupyter-notebook[2057]: [I 15:20:18.201 NotebookApp] 302 POST /login?next=%2Ftree%3F (192.168.0.2) 2.41ms
```

재시작: sudo systemctl restart jupyter.service

멈춤: sudo systemctl stop jupyter.service

해제: sudo systemctl disable jupyter.service

