#!/bin/bash

git clone https://github.com/sqlmapproject/sqlmap.git
pip install pymysql psycopg2 pysqlite2 python-ntlm
mkdir bin
cd bin
ln -s ../sqlmap/sqlmap.py .
