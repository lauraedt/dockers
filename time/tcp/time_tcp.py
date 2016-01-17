#!/usr/bin/python
#-*- coding: utf-8-*-q
# @edt
# TIME server program
# -----------------------------------------------

import socket, sys, time


#VARIABLES

HOST = ''
PORT = 37

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# prevenció per a que no quedi el address en time_wait quan finalitzem el socket
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

s.bind((HOST, PORT))

s.listen(1)

while True:
	conn, addr = s.accept()
	now = time.mktime(time.gmtime())
	conn.sendall(str(now)+"\n")
	conn.close()
sys.exit(0)
