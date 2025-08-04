#!/bin/bash

ASN=${1}
COMMAND="dis bgp all summary | i ${ASN}"

sshpass -p ${SSHPASS} ssh zabbix@"${ip_gerencia}" -p 33033 -o KexAlgorithms=+diffie-hellman-group-exchange-sha1 -o StrictHostKeyChecking=no -x "${COMMAND}" 2>/dev/null