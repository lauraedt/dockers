#! /usr/bin/python
#-*- coding: utf-8 -*-
# @edt
# DISCARD server program
# -----------------------------------------------

import socket, sys, select


#VARIABLES
HOST = ''                 
PORT = 9
           
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# prevenció per a que no quedi el address en time_wait quan finalitzem el socket
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

s.bind((HOST, PORT))

s.listen(1)

conns=[s]

while True:
    actius,x,y = select.select(conns,[],[])
    for actual in actius:
		if actual == s: # si hi ha una connexió nova, cal establir-la
			conn, addr = s.accept()
			conns.append(conn)
		else:
			data = actual.recv(1024)
			if not data:
				actual.close()
				conns.remove(actual)
s.close()
sys.exit(0)
