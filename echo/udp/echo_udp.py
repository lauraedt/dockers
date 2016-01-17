#! /usr/bin/python
#-*- coding: utf-8 -*-
# @ edt
# echo server program
# -----------------------------------------------
import socket, sys
 
HOST = ''
PORT = 7
 
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
 
# prevenció per a que no quedi el address en time_wait quan finalitzem el socket
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
 
s.bind((HOST, PORT))

while 1:
    # receive data from client (data, addr)
    d = s.recvfrom(1024)
    data = d[0]
    addr = d[1]
     
    if not data: 
        break
     
    reply = 'reply: ' + data
     
    s.sendto(reply , addr)
s.close()
sys.exit(0)
