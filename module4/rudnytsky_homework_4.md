# Task 1

### sudo apt update

```
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:3 https://apt.releases.hashicorp.com noble InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:5 https://packages.microsoft.com/repos/azure-cli noble InRelease
Hit:6 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Reading package lists...
Building dependency tree...
Reading state information...
65 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

### sudo apt install tree -y

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
tree is already the newest version (2.1.1-2ubuntu3.24.04.2).
0 upgraded, 0 newly installed, 0 to remove and 65 not upgraded.
```

### sudo apt install htop -y

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
htop is already the newest version (3.3.0-4build1).
0 upgraded, 0 newly installed, 0 to remove and 65 not upgraded. 
```

### tree --version

```
tree v2.1.1 © 1996 - 2023 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro
```

### sudo apt remove tree -y

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  tree
0 upgraded, 0 newly installed, 1 to remove and 65 not upgraded.
After this operation, 111 kB disk space will be freed.
(Reading database ... 74120 files and directories currently installed.)
Removing tree (2.1.1-2ubuntu3.24.04.2) ...
Processing triggers for man-db (2.12.0-4build2) ...
```

# Task 2

### systemctl status cron

```
● cron.service - Regular background program processing daemon
     Loaded: loaded (/usr/lib/systemd/system/cron.service; enabled; preset: enabled)
     Active: active (running) since Fri 2026-05-22 18:40:42 UTC; 46min ago
       Docs: man:cron(8)
   Main PID: 163 (cron)
      Tasks: 1 (limit: 9386)
     Memory: 420.0K (peak: 2.3M)
        CPU: 29ms
     CGroup: /system.slice/cron.service
             └─163 /usr/sbin/cron -f -P

Warning: some journal files were not opened due to insufficient permissions.
```

### sudo systemctl stop cron & systemctl status cron

```
srudnytsky@Trinity:/mnt/d/linux$ sudo systemctl stop cron
srudnytsky@Trinity:/mnt/d/linux$ systemctl status cron
○ cron.service - Regular background program processing daemon
     Loaded: loaded (/usr/lib/systemd/system/cron.service; enabled; preset: enabled)
     Active: inactive (dead) since Fri 2026-05-22 19:27:16 UTC; 1min 15s ago
   Duration: 46min 33.450s
       Docs: man:cron(8)
    Process: 163 ExecStart=/usr/sbin/cron -f -P $EXTRA_OPTS (code=killed, signal=TERM)
   Main PID: 163 (code=killed, signal=TERM)
        CPU: 29ms

Warning: some journal files were not opened due to insufficient permissions.
srudnytsky@Trinity:/mnt/d/linux$              sleep 1000 &
```

###  sudo systemctl enable cron

```
Synchronizing state of cron.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install enable cron
```

### sudo systemctl start cron & systemctl status cron

```
srudnytsky@Trinity:/mnt/d/linux$ sudo systemctl start cron
srudnytsky@Trinity:/mnt/d/linux$ systemctl status cron
● cron.service - Regular background program processing daemon
     Loaded: loaded (/usr/lib/systemd/system/cron.service; enabled; preset: enabled)
     Active: active (running) since Fri 2026-05-22 19:29:27 UTC; 17s ago
       Docs: man:cron(8)
   Main PID: 2906 (cron)
      Tasks: 1 (limit: 9386)
     Memory: 364.0K (peak: 588.0K)
        CPU: 2ms
     CGroup: /system.slice/cron.service
             └─2906 /usr/sbin/cron -f -P
```

# Task 3

### cd /var/log && sudo tail -n 10 syslog

```
2026-05-22T19:29:48.662451+00:00 Trinity wsl-pro-service[179]: #033[37mDEBUG#033[0m Updated systemd status to "Not connected: waiting to retry"
2026-05-22T19:30:06.673610+00:00 Trinity PackageKit: daemon quit
2026-05-22T19:30:06.689220+00:00 Trinity systemd[1]: packagekit.service: Deactivated successfully.
2026-05-22T19:30:10.916967+00:00 Trinity systemd-resolved[135]: Clock change detected. Flushing caches.
2026-05-22T19:30:40.923705+00:00 Trinity systemd-resolved[135]: Clock change detected. Flushing caches.
2026-05-22T19:30:48.700178+00:00 Trinity wsl-pro-service[179]: #033[36mINFO#033[0m Daemon: connecting to Windows Agent
2026-05-22T19:30:48.702543+00:00 Trinity wsl-pro-service[179]: #033[37mDEBUG#033[0m Updated systemd status to "Connecting"
2026-05-22T19:30:48.702583+00:00 Trinity wsl-pro-service[179]: #033[33mWARNING#033[0m Daemon: could not connect to Windows Agent: could not get address: could not read agent port file "/mnt/c/Users/srudnytsky/.ubuntupro/.address": open /mnt/c/Users/srudnytsky/.ubuntupro/.address: no such file or directory
2026-05-22T19:30:48.702594+00:00 Trinity wsl-pro-service[179]: #033[36mINFO#033[0m Reconnecting to Windows host in 60 seconds
2026-05-22T19:30:48.702608+00:00 Trinity wsl-pro-service[179]: #033[37mDEBUG#033[0m Updated systemd status to "Not connected: waiting to retry"
```

### journalctl -p err

```
Hint: You are currently not seeing messages from other users and the system.
      Users in groups 'adm', 'systemd-journal' can see all messages.
      Pass -q to turn off this notice.
-- No entries --
```

### sudo journalctl -p err

```
Jan 20 19:57:33 Trinity kernel: PCI: Fatal: No config space access function found
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_is_feature_enabled: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -2
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -22
Jan 20 19:57:33 Trinity kernel: misc dxg: dxgk: dxgkio_query_adapter_info: Ioctl failed: -2
Jan 20 19:57:36 Trinity login[305]: PAM unable to dlopen(pam_lastlog.so): /usr/lib/security/pam_lastlog.so: cannot open shared object file: No such file o>
Jan 20 19:57:36 Trinity login[305]: PAM adding faulty module: pam_lastlog.so
```

### journalctl | grep cron

```
May 22 19:28:29 Trinity sudo[2752]: srudnytsky : TTY=pts/4 ; PWD=/mnt/d/linux ; USER=root ; COMMAND=/usr/bin/systemctl stop cron
May 22 19:29:14 Trinity sudo[2788]: srudnytsky : TTY=pts/4 ; PWD=/mnt/d/linux ; USER=root ; COMMAND=/usr/bin/systemctl enable cron
May 22 19:29:27 Trinity sudo[2902]: srudnytsky : TTY=pts/4 ; PWD=/mnt/d/linux ; USER=root ; COMMAND=/usr/bin/systemctl start cron
```


# Task 4

### cd ~ && nano myscript.sh

```
#!/bin/bash

while true
do
    date >> /home/srudnytsky/dates.txt
    sleep 1
done

CTRL + O, CTRL + X
```

### chmod +x ~/myscript.sh && ls -la

```
total 48
drwxr-x--- 6 srudnytsky srudnytsky 4096 May 22 19:39 .
drwxr-xr-x 5 root       root       4096 May 14 15:49 ..
-rw------- 1 srudnytsky srudnytsky  489 May 14 16:33 .bash_history
-rw-r--r-- 1 srudnytsky srudnytsky  220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 srudnytsky srudnytsky 3771 Mar 31  2024 .bashrc
drwx------ 2 srudnytsky srudnytsky 4096 May 14 15:51 .cache
drwx------ 4 srudnytsky srudnytsky 4096 May 14 16:02 .config
drwxr-xr-x 2 srudnytsky srudnytsky 4096 May 14 15:50 .landscape
-rw------- 1 srudnytsky srudnytsky   20 May 22 19:33 .lesshst
drwxr-xr-x 3 srudnytsky srudnytsky 4096 May 22 19:37 .local
-rw-rw-r-- 1 srudnytsky srudnytsky    0 May 22 19:20 .motd_shown
-rw-r--r-- 1 srudnytsky srudnytsky  807 Mar 31  2024 .profile
-rw-r--r-- 1 srudnytsky srudnytsky    0 May 14 15:52 .sudo_as_admin_successful
-rwxr-xr-x 1 srudnytsky srudnytsky   83 May 22 19:39 myscript.sh
```

### sudo nano /etc/systemd/system/myscript.service

```
[Unit]
Description=My Date Writer Service

[Service]
ExecStart=/home/srudnytsky/myscript.sh
Restart=always
User=srudnytsky

[Install]
WantedBy=multi-user.target

CTRL + O, CTRL + X
```

### sudo systemctl daemon-reload

### sudo systemctl start myscript.service && systemctl status myscript.service

```
srudnytsky@Trinity:~$ sudo systemctl enable myscript.service
Created symlink /etc/systemd/system/multi-user.target.wants/myscript.service → /etc/systemd/system/myscript.service.
srudnytsky@Trinity:~$ systemctl status myscript.service
● myscript.service - My Date Writer Service
     Loaded: loaded (/etc/systemd/system/myscript.service; enabled; preset: enabled)
     Active: active (running) since Fri 2026-05-22 19:41:41 UTC; 1min 27s ago
   Main PID: 3173 (myscript.sh)
      Tasks: 2 (limit: 9386)
     Memory: 844.0K (peak: 1.9M)
        CPU: 203ms
     CGroup: /system.slice/myscript.service
             ├─3173 /bin/bash /home/srudnytsky/myscript.sh
             └─3398 sleep 1
```

### tail -f ~/dates.txt

```
srudnytsky@Trinity:~$ tail -f ~/dates.txt
Fri May 22 19:43:25 UTC 2026
Fri May 22 19:43:26 UTC 2026
Fri May 22 19:43:27 UTC 2026
Fri May 22 19:43:28 UTC 2026
Fri May 22 19:43:29 UTC 2026
Fri May 22 19:43:30 UTC 2026
Fri May 22 19:43:31 UTC 2026
Fri May 22 19:43:32 UTC 2026
Fri May 22 19:43:33 UTC 2026
Fri May 22 19:43:34 UTC 2026
Fri May 22 19:43:35 UTC 2026
Fri May 22 19:43:36 UTC 2026
```

