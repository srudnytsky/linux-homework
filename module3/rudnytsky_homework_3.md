# Task 1

### ps aux

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1  21756 12240 ?        Ss   15:41   0:00 /sbin/init
root           2  0.0  0.0   3120  2048 ?        Sl   15:41   0:00 /init
root           7  0.0  0.0   3120  1792 ?        Sl   15:41   0:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
root          43  0.0  0.2  66824 18920 ?        S<s  15:41   0:00 /usr/lib/systemd/systemd-journald
root          92  0.0  0.0  25276  6272 ?        Ss   15:41   0:00 /usr/lib/systemd/systemd-udevd
systemd+     124  0.0  0.1  21460 12416 ?        Ss   15:41   0:00 /usr/lib/systemd/systemd-resolved
systemd+     132  0.0  0.0  91028  7680 ?        Ssl  15:41   0:00 /usr/lib/systemd/systemd-timesyncd
root         161  0.0  0.0   4236  2560 ?        Ss   15:41   0:00 /usr/sbin/cron -f -P
message+     162  0.0  0.0   9632  4736 ?        Ss   15:41   0:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         183  0.0  0.1  18156  8320 ?        Ss   15:41   0:00 /usr/lib/systemd/systemd-logind
root         195  0.0  0.1 1755840 12160 ?       Ssl  15:41   0:00 /usr/libexec/wsl-pro-service -vv
root         217  0.0  0.0   3160  2048 hvc0     Ss+  15:41   0:00 /sbin/agetty -o -p -- \u --noclear --keep-baud - 115200,38400,9600 vt220
root         224  0.0  0.0   3116  1920 tty1     Ss+  15:41   0:00 /sbin/agetty -o -p -- \u --noclear - linux
syslog       235  0.0  0.0 222508  5248 ?        Ssl  15:41   0:00 /usr/sbin/rsyslogd -n -iNONE
root         274  0.0  0.2 107024 22400 ?        Ssl  15:41   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
srudnyt+     838  0.0  0.1  20320 11264 ?        Ss   15:50   0:00 /usr/lib/systemd/systemd --user
srudnyt+     839  0.0  0.0  21160  3520 ?        S    15:50   0:00 (sd-pam)
root         944  0.0  0.0   3128   904 ?        Ss   15:51   0:00 /init
root         945  0.0  0.0   3144  1040 ?        S    15:51   0:00 /init
srudnyt+     946  0.0  0.0   6072  5120 pts/0    Ss   15:51   0:00 -bash
root         947  0.0  0.0   6692  4352 pts/2    Ss   15:51   0:00 /bin/login -f
srudnyt+    1000  0.0  0.0   6056  5248 pts/2    S+   15:51   0:00 -bash
srudnyt+    1130  0.0  0.0   8280  4224 pts/0    R+   15:54   0:00 ps aux

### ps -ef

UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 15:41 ?        00:00:00 /sbin/init
root           2       1  0 15:41 ?        00:00:00 /init
root           7       2  0 15:41 ?        00:00:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
root          43       1  0 15:41 ?        00:00:00 /usr/lib/systemd/systemd-journald
root          92       1  0 15:41 ?        00:00:00 /usr/lib/systemd/systemd-udevd
systemd+     124       1  0 15:41 ?        00:00:00 /usr/lib/systemd/systemd-resolved
systemd+     132       1  0 15:41 ?        00:00:00 /usr/lib/systemd/systemd-timesyncd
root         161       1  0 15:41 ?        00:00:00 /usr/sbin/cron -f -P
message+     162       1  0 15:41 ?        00:00:00 @dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation --syslog-only
root         183       1  0 15:41 ?        00:00:00 /usr/lib/systemd/systemd-logind
root         195       1  0 15:41 ?        00:00:00 /usr/libexec/wsl-pro-service -vv
root         217       1  0 15:41 hvc0     00:00:00 /sbin/agetty -o -p -- \u --noclear --keep-baud - 115200,38400,9600 vt220
root         224       1  0 15:41 tty1     00:00:00 /sbin/agetty -o -p -- \u --noclear - linux
syslog       235       1  0 15:41 ?        00:00:00 /usr/sbin/rsyslogd -n -iNONE
root         274       1  0 15:41 ?        00:00:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
srudnyt+     838       1  0 15:50 ?        00:00:00 /usr/lib/systemd/systemd --user
srudnyt+     839     838  0 15:50 ?        00:00:00 (sd-pam)
root         944       2  0 15:51 ?        00:00:00 /init
root         945     944  0 15:51 ?        00:00:00 /init
srudnyt+     946     945  0 15:51 pts/0    00:00:00 -bash
root         947       2  0 15:51 pts/2    00:00:00 /bin/login -f
srudnyt+    1000     947  0 15:51 pts/2    00:00:00 -bash
srudnyt+    1145     946  0 15:54 pts/0    00:00:00 ps -ef

### top

top - 16:00:30 up 19 min,  1 user,  load average: 0.00, 0.00, 0.00
Tasks:  23 total,   1 running,  22 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 
MiB Mem :   7832.2 total,   7371.2 free,    472.3 used,    138.9 buff/cache     
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   7359.9 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                       
      1 root      20   0   21756  12240   9168 S   0.0   0.2   0:00.67 systemd                                                       
      2 root      20   0    3120   2048   2048 S   0.0   0.0   0:00.05 init-systemd(Ub                                               
      7 root      20   0    3120   1792   1792 S   0.0   0.0   0:00.00 init                                                          
     43 root      19  -1   66824  18920  18152 S   0.0   0.2   0:00.18 systemd-journal                                               
     92 root      20   0   25276   6272   4992 S   0.0   0.1   0:00.51 systemd-udevd                                                 
    124 systemd+  20   0   21460  12416  10368 S   0.0   0.2   0:00.10 systemd-resolve                                               
    132 systemd+  20   0   91028   7680   6784 S   0.0   0.1   0:00.07 systemd-timesyn                                               
    161 root      20   0    4236   2560   2432 S   0.0   0.0   0:00.00 cron                                                          
    162 message+  20   0    9632   4736   4480 S   0.0   0.1   0:00.05 dbus-daemon                                                   
    183 root      20   0   18156   8320   7424 S   0.0   0.1   0:00.09 systemd-logind                                                
    195 root      20   0 1755840  12160  10368 S   0.0   0.2   0:00.12 wsl-pro-service                                               
    217 root      20   0    3160   2048   1920 S   0.0   0.0   0:00.00 agetty                                                        
    224 root      20   0    3116   1920   1792 S   0.0   0.0   0:00.00 agetty                                                        
    235 syslog    20   0  222508   5248   4352 S   0.0   0.1   0:00.08 rsyslogd                                                      
    274 root      20   0  107024  22400  13184 S   0.0   0.3   0:00.10 unattended-upgr                                               
    838 srudnyt+  20   0   20320  11264   9216 S   0.0   0.1   0:00.05 systemd                                                       
    839 srudnyt+  20   0   21160   3520   1792 S   0.0   0.0   0:00.00 (sd-pam)                                                      
    944 root      20   0    3128    904    768 S   0.0   0.0   0:00.00 SessionLeader                                                 
    945 root      20   0    3144   1168   1024 S   0.0   0.0   0:00.02 Relay(946)                                                    
    946 srudnyt+  20   0    6072   5120   3584 S   0.0   0.1   0:00.06 bash                                                          
    947 root      20   0    6692   4352   3712 S   0.0   0.1   0:00.00 login                                                         
   1000 srudnyt+  20   0    6056   5248   3584 S   0.0   0.1   0:00.01 bash                                                          
   1270 srudnyt+  20   0    9268   5632   3456 R   0.0   0.1   0:00.01 top  

### ps aux | grep "bash"

srudnyt+     946  0.0  0.0   6072  5120 pts/0    Ss   15:51   0:00 -bash
srudnyt+    1000  0.0  0.0   6056  5248 pts/2    S+   15:51   0:00 -bash
srudnyt+    1208  0.0  0.0   6072  3140 pts/0    D+   15:57   0:00 -bash

# Task 2

### sleep 1000 &

[1] 1472

### jobs

[1]+  Running                 sleep 1000 &

### fg

sleep 1000
^Z      
[1]+  Stopped                 sleep 1000

### ps aux | grep sleep

srudnyt+    1472  0.0  0.0   3124  1792 pts/0    T    16:03   0:00 sleep 1000
srudnyt+    1507  0.0  0.0   4088  2048 pts/0    S+   16:03   0:00 grep --color=auto sleep

### kill -9 1472


### nohup sleep 1000 &

[2] 1600
[1]   Killed                  sleep 1000

### ps aux | grep sleep

srudnyt+    1600  0.0  0.0   3124  1792 pts/0    S    16:06   0:00 sleep 1000
srudnyt+    1624  0.0  0.0   4088  2048 pts/0    S+   16:06   0:00 grep --color=auto sleep

# Task 3

### nice -n 10 sleep 1000

### ps aux | grep sleep

srudnyt+    1600  0.0  0.0   3124  1792 pts/0    S    16:06   0:00 sleep 1000
srudnyt+    1657  0.0  0.0   3124  1792 pts/0    SN+  16:08   0:00 sleep 1000
srudnyt+    1719  0.0  0.0   4088  2048 pts/3    S+   16:10   0:00 grep --color=auto sleep

### renice 15 -p 1657

1657 (process ID) old priority 10, new priority 15

### ulimit -a

real-time non-blocking time  (microseconds, -R) unlimited
core file size              (blocks, -c) 0
data seg size               (kbytes, -d) unlimited
scheduling priority                 (-e) 0
file size                   (blocks, -f) unlimited
pending signals                     (-i) 31289
max locked memory           (kbytes, -l) 65536
max memory size             (kbytes, -m) unlimited
open files                          (-n) 10240
pipe size                (512 bytes, -p) 8
POSIX message queues         (bytes, -q) 819200
real-time priority                  (-r) 0
stack size                  (kbytes, -s) 8192
cpu time                   (seconds, -t) unlimited
max user processes                  (-u) 31289
virtual memory              (kbytes, -v) unlimited
file locks                          (-x) unlimited

# Task 4

### df -h

Filesystem      Size  Used Avail Use% Mounted on
none            3.9G     0  3.9G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            3.9G  4.0K  3.9G   1% /mnt/wsl
drivers         195G  189G  6.3G  97% /usr/lib/wsl/drivers
/dev/sdd       1007G  3.3G  953G   1% /
none            3.9G   84K  3.9G   1% /mnt/wslg
none            3.9G     0  3.9G   0% /usr/lib/wsl/lib
rootfs          3.9G  2.7M  3.9G   1% /init
none            3.9G  520K  3.9G   1% /run
none            3.9G     0  3.9G   0% /run/lock
none            3.9G     0  3.9G   0% /run/shm
none            3.9G   76K  3.9G   1% /mnt/wslg/versions.txt
none            3.9G   76K  3.9G   1% /mnt/wslg/doc
C:\             195G  189G  6.3G  97% /mnt/c
D:\             282G  145G  138G  52% /mnt/d
tmpfs           784M   20K  784M   1% /run/user/1002

### free -h
```
               total        used        free      shared  buff/cache   available
Mem:           7.6Gi       478Mi       7.2Gi       3.5Mi       123Mi       7.2Gi
Swap:          2.0Gi          0B       2.0Gi
```
### free -h -w
```

               total        used        free      shared     buffers       cache   available
Mem:           7.6Gi       474Mi       7.2Gi       3.5Mi       1.5Mi       122Mi       7.2Gi
Swap:          2.0Gi          0B       2.0Gi
```