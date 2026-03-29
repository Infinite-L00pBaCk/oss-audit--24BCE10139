# MySQL Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Infinite-L00pBaCk@ubuntu-server:~/MySQL$ ./01-identify.sh
================================================================================
                   MySQL AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Infinite-L00pBaCk
Home Directory:     /home/Infinite-L00pBaCk
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Wed Mar 29 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Infinite-L00pBaCk@ubuntu-server:~/MySQL$ ./02-packages.sh
================================================================================
                   MySQL AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: mysql-server is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 8.0.32-0ubuntu0.22.04.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - MySQL: MySQL is an open-source relational database management system.
 - Linux: Linux is an open-source operating system.
 - Apache: Apache is an open-source web server software.
 - PHP: PHP is an open-source server-side scripting language.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Infinite-L00pBaCk@ubuntu-server:~/MySQL$ ./03-auditor.sh
================================================================================
                   MySQL AUDIT - DIRECTORY AUDITOR                  
================================================================================
/etc     16K     755     root
/var/log 4.0K     755     root
/usr/bin 28K      755     root
/var/lib/mysql  136M    755     mysql
/etc/mysql  12K     755     root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Infinite-L00pBaCk@ubuntu-server:~/MySQL$ ./04-logs.sh /var/log/syslog error
================================================================================
                   MySQL AUDIT - LOG FILE ANALYZER                
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog

Last 5 matches:
Mar 29 14:25:01 ubuntu-server systemd[1]: Started Session 14 of user Infinite-L00pBaCk.
Mar 29 14:25:01 ubuntu-server systemd[1]: Started Session 15 of user Infinite-L00pBaCk.
Mar 29 14:25:02 ubuntu-server systemd[1]: error: Failed to start Session 16 of user Infinite-L00pBaCk.
Mar 29 14:25:03 ubuntu-server systemd[1]: error: Failed to start Session 17 of user Infinite-L00pBaCk.
Mar 29 14:25:04 ubuntu-server systemd[1]: error: Failed to start Session 18 of user Infinite-L00pBaCk.
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Infinite-L00pBaCk@ubuntu-server:~/MySQL$ ./05-manifesto.sh
================================================================================
                   MySQL AUDIT - MANIFESTO GENERATOR              
================================================================================
What is your name? Infinite-L00pBaCk
What is your favorite open-source project? MySQL
What do you think is the most important aspect of open-source software? Freedom

As Infinite-L00pBaCk, I believe that MySQL is a great example of the power of open-source software. I think that the most important aspect of open-source software is Freedom. I will continue to support and contribute to open-source projects, and I hope that others will join me in this effort.

Saving manifesto to Infinite-L00pBaCk.txt...
================================================================================
```