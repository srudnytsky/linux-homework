# Task 1

### ip a

```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet 10.255.255.254/32 brd 10.255.255.254 scope global lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1280 qdisc mq state UP group default qlen 1000
    link/ether 00:15:5d:fa:6b:c7 brd ff:ff:ff:ff:ff:ff
    inet 172.25.51.69/20 brd 172.25.63.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::215:5dff:fefa:6bc7/64 scope link 
       valid_lft forever preferred_lft forever
```

### ping 8.8.8.8

```
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=118 time=18.6 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=118 time=19.8 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=118 time=14.8 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=118 time=78.4 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=118 time=16.1 ms
64 bytes from 8.8.8.8: icmp_seq=6 ttl=118 time=15.7 ms
64 bytes from 8.8.8.8: icmp_seq=7 ttl=118 time=17.7 ms
64 bytes from 8.8.8.8: icmp_seq=8 ttl=118 time=30.7 ms
64 bytes from 8.8.8.8: icmp_seq=9 ttl=118 time=36.1 ms
^C
--- 8.8.8.8 ping statistics ---
9 packets transmitted, 9 received, 0% packet loss, time 7997ms
rtt min/avg/max/mdev = 14.782/27.553/78.424/19.268 ms
```

### ss -tulpn

```
Netid State  Recv-Q Send-Q  Local Address:Port Peer Address:PortProcess
udp   UNCONN 0      0          127.0.0.54:53        0.0.0.0:*          
udp   UNCONN 0      0       127.0.0.53%lo:53        0.0.0.0:*          
udp   UNCONN 0      0      10.255.255.254:53        0.0.0.0:*          
udp   UNCONN 0      0           127.0.0.1:323       0.0.0.0:*          
udp   UNCONN 0      0               [::1]:323          [::]:*          
tcp   LISTEN 0      4096    127.0.0.53%lo:53        0.0.0.0:*          
tcp   LISTEN 0      4096       127.0.0.54:53        0.0.0.0:*          
tcp   LISTEN 0      1000   10.255.255.254:53        0.0.0.0:*          
```

### Висновок

```
ip = 172.25.51.69
Доступ до інтернету - так
Виявлені сервіси які слухають порт - DNS Resolver, який слухає 53 порт.
```

# Task 2

### ssh-keygen -t ed25519 -C "srudnytsky"

```
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/srudnytsky/.ssh/id_ed25519): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/srudnytsky/.ssh/id_ed25519
Your public key has been saved in /home/srudnytsky/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:mAn02ae9qpaqCRyhMcVhTEKsL4wdc8ylbaNv/vgAy00 srudnytsky
The key's randomart image is:
+--[ED25519 256]--+
|+==..            |
| =o. ..o         |
|+. o.+o . .      |
|oo+ =.++ +       |
|++ +.oE.S .      |
|+.+..=     .     |
|.o  o.o.  .      |
| . .  =o .       |
|  o..=+++        |
+----[SHA256]-----+
```

### ssh-copy-id azureuser@172.205.210.121

```
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/srudnytsky/.ssh/id_ed25519.pub"
The authenticity of host '172.205.210.121 (172.205.210.121)' can't be established.
ED25519 key fingerprint is SHA256:J0calz3LhqbGvTD8OZvXTLQW0/x7WUJXX4LhR2U4MeI.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
azureuser@172.205.210.121's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'azureuser@172.205.210.121'"
and check to make sure that only the key(s) you wanted were added.
```

###  nano ~/.ssh/config

```
Host azureserver
   HostName 172.205.210.121
   User azureuser
   IdentityFile ~/.ssh/id_ed25519
```

### ssh azureserver

```
srudnytsky@Trinity:/mnt/d/linux$ ssh azureserver
Welcome to Ubuntu 24.04.4 LTS (GNU/Linux 6.17.0-1017-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue Jun  2 18:18:13 UTC 2026

  System load:  0.0               Processes:             128
  Usage of /:   5.9% of 28.02GB   Users logged in:       0
  Memory usage: 4%                IPv4 address for eth0: 10.0.0.4
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

azureuser@server:~$ whoami
azureuser
azureuser@server:~$ cat ~/.ssh/authorized_keys
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINbP1sZRr65okywvbVprpUjY06hTbLLecsabWKXmidF2 srudnytsky
azureuser@server:~$ 
```

# Task 3

### echo "test" > test.txt


### scp test.txt azureserver:~

```
srudnytsky@Trinity:/mnt/d/linux$ scp test.txt azureserver:~
test.txt                                                 100%    5     0.1KB/s   00:00    
srudnytsky@Trinity:/mnt/d/linux$ 
```

### ssh azureserver "mkdir -p ~/sync"

```
No output
```

### mkdir -p sync_data && cp test.txt sync_data/

```
No output
```

### rsync -av sync_data/ azureserver:~/sync/

```
srudnytsky@Trinity:/mnt/d/linux$ rsync -av sync_data/ azureserver:~/sync/
sending incremental file list
./
test.txt

sent 131 bytes  received 38 bytes  112.67 bytes/sec
total size is 5  speedup is 0.03
```

### sftp azureserver

```
srudnytsky@Trinity:/mnt/d/linux$ sftp azureserver
Connected to azureserver.
sftp> ls
sync  
sftp> cd sync/
sftp> ls
test.txt  
sftp> 
```
