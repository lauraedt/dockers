#!/usr/bin/python
#-*- coding: utf-8-*-q

# TIME server program
# -----------------------------------------------

import sys, socket, time


#VARIABLES
HOST = ''
PORT = 37

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# prevenció per a que no quedi el address en time_wait quan finalitzem el socket
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

s.bind((HOST, PORT))

while True:
	d = s.recvfrom(1024)
	data = d[0]
	addr = d[1]
	now = time.mktime(time.gmtime())
	s.sendto(str(now)+'\n',addr)
s.close()
sys.exit(0)	
