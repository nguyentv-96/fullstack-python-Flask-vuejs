#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# standard python imports

mssql = {'host': 'dbhost',
         'user': 'dbuser',
         'passwd': 'dbPwd',
         'db': 'db'}

postgresql = {'host': '127.0.0.1',
              'user': 'nguyentv',
              'passwd': 'nguyentv',
              'db': 'nguyentv_demo'}


mssqlConfig = "mssql+pyodbc://{}:{}@{}:1433/{}?driver=SQL+Server+Native+Client+10.0".format(
    mssql['user'], mssql['passwd'], mssql['host'], mssql['db'])
postgresqlConfig = "postgresql+psycopg2://{}:{}@{}:5432/{}".format(
    postgresql['user'], postgresql['passwd'], postgresql['host'], postgresql['db'])
