#!/bin/bash

IP='192.168.83'

for i in 'seq 45 65'
do
	ping -c1 -w1 $IP.$i &>/dev/null && echo '$IP.$i is up' || echo '$IP.$i is down'
done