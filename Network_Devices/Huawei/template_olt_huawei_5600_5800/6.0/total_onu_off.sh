#!/bin/bash

COMMUNITY=$1
IP=$2
STATUS=$3

snmpbulkwalk -v2c -c $COMMUNITY $IP:1161 .1.3.6.1.4.1.2011.6.128.1.1.2.46.1.15 | awk '{print $4}' | grep "$STATUS" | wc -l
