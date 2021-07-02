#!/bin/bash

mysql -u root --password=admin --host=mysql lportal < /mnt/liferay/1_patcher.sql
