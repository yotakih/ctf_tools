#!/usr/bin/python3
#-*- coding:utf-8 -*-

import socket
import time
import struct
import sys
import os
import telnetlib

def connect(ip,port):
	return socket.create_connection((ip,port))

def p(x):
	return struct.pack('<I',x)

def u(x):
	return struct.unpack('<I',x)[0]

def interact(s):
	print('----- interactive mode -----')
	t = telnetlib.Telnet()
	t.sock = s
	t.interact()


s = connect('127.0.0.1',4000)

#write code here


interact(s)
