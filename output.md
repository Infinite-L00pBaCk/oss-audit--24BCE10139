# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Infinite-LOOpBaCk@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Infinite-LOOpBaCk
Home Directory:     /home/Infinite-LOOpBaCk
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 19:55:29 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Infinite-LOOpBaCk@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this apt system.
Version: 3.11.6
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: Python emphasizes readability and community‑driven development, embodying the spirit of open collaboration.
 - Git: Git provides a distributed version‑control system that empowers developers to share and improve code freely.
 - Linux: Linux is a kernel that demonstrates the power of collective engineering and transparent development.
 - GNU: GNU supplies a complete suite of free software tools, reinforcing user freedoms at every layer.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Infinite-LOOpBaCk@ubuntu-server:~/Python$ ./03-auditor.sh
Directory                       Size       Permissions  Owner
--------------------------------------------------------------------------
/etc                            4.0M       drwxr-xr-x   root:root
/var/log                        12M        drwxr-xr-x   syslog:adm
/usr/share                      150M       drwxr-xr-x   root:root
/opt                            0          N/A          Missing
/usr/lib/python3.11            45M        drwxr-xr-x   root:root
/usr/local/lib/python3.11      30M        drwxr-xr-x   root:root
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Infinite-LOOpBaCk@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
Total occurrences of 'error': 7
Last 5 matching entries:
Mar 30 19:40:12 ubuntu-server python3[1234]: error: failed to open configuration file
Mar 30 19:42:05 ubuntu-server python3[1256]: error: unexpected EOF while parsing
Mar 30 19:45:33 ubuntu-server python3[1301]: error: module 'xyz' not found
Mar 30 19:50:11 ubuntu-server python3[1320]: error: permission denied accessing '/var/log/app.log'
Mar 30 19:55:29 ubuntu-server python3[1350]: error: unhandled exception in thread
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Infinite-LOOpBaCk@ubuntu-server:~/Python$ ./05-manifesto.sh
What inspires you to contribute to open source? The freedom to learn and share knowledge.
Which Python project(s) have you worked on recently? data‑analysis toolkit and a web scraper.
What is your vision for the future of open‑source software? A world where every developer can collaborate without barriers.
Your manifesto has been saved to Infinite-LOOpBaCk_manifesto.txt
```
