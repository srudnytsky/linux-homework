# Task 1

### cd / && ls

bin                dev   init               lib64       mnt   root  sbin.usr-is-merged  sys  var        wslbgHign
bin.usr-is-merged  etc   lib                lost+found  opt   run   snap                tmp  wslGpdJen  wslkKLJgn
boot               home  lib.usr-is-merged  media       proc  sbin  srv                 usr  wslbIkiNm  wslnGBdgn

### cd etc && ls <- from / or cd /etc && ls

PackageKit              debconf.conf    init.d           mke2fs.conf          rc2.d              sudoers
X11                     debian_version  inputrc          modprobe.d           rc3.d              sudoers.d
adduser.conf            default         iproute2         modules              rc4.d              supercat
alternatives            deluser.conf    issue            modules-load.d       rc5.d              sysctl.conf
apparmor                depmod.d        issue.net        mtab                 rc6.d              sysctl.d
apparmor.d              dhcp            java-21-openjdk  nanorc               rcS.d              systemd
apport                  dhcpcd.conf     kernel           netconfig            resolv.conf        terminfo
apt                     dpkg            landscape        netplan              rmt                timezone
bash.bashrc             e2scrub.conf    ld.so.cache      network              rpc                tmpfiles.d
bash_completion         environment     ld.so.conf       networkd-dispatcher  rsyslog.conf       ubuntu-advantage
bash_completion.d       environment.d   ld.so.conf.d     networks             rsyslog.d          ucf.conf
bindresvport.blacklist  ethertypes      ldap             newt                 security           udev
binfmt.d                fonts           legal            nsswitch.conf        selinux            update-manager
byobu                   fstab           libaudit.conf    opt                  sensors.d          update-motd.d
ca-certificates         fuse.conf       locale.alias     os-release           sensors3.conf      vconsole.conf
ca-certificates.conf    gai.conf        locale.conf      pam.conf             services           vim
cloud                   glvnd           locale.gen       pam.d                sgml               vtrgb
console-setup           gnutls          localtime        passwd               shadow             vulkan
credstore               gprofng.rc      logcheck         passwd-              shadow-            wgetrc
credstore.encrypted     groff           login.defs       perl                 shells             wsl-distribution.conf
cron.d                  group           logrotate.conf   pm                   skel               wsl.conf
cron.daily              group-          logrotate.d      polkit-1             ssh                xattr.conf
cron.hourly             gshadow         lsb-release      profile              ssl                xdg
cron.monthly            gshadow-        machine-id       profile.d            subgid             xml
cron.weekly             gss             magic            protocols            subgid-            zsh_command_not_found
cron.yearly             gtk-3.0         magic.mime       python3              subuid
crontab                 host.conf       manpath.config   python3.12           subuid-
dbus-1                  hostname        maven            rc0.d                sudo.conf
dconf                   hosts           mime.types       rc1.d                sudo_logsrvd.conf

### cd /home && ls

srudnytsky

# Task 2

### cd ~ && mkdir lab2 && ls

lab2

### cd lab2 && touch file.txt OR > file.txt OR nano file.txt && ls

file.txt

### cp file.txt lab2.txt && ls

file.txt lab2.txt

### mv file.txt file_copy.txt && ls

file_copy.txt  lab2.txt

### ln file_copy.txt file_hardlink.txt && ls

file_copy.txt  file_hardlink.txt  lab2.txt

### ln -s file_copy.txt file_symlink.txt && ls

file_copy.txt  file_hardlink.txt  file_symlink.txt  lab2.txt

### find ~ -name "file_copy.txt"
/home/srudnytsky/lab2/file_copy.txt

# Task 3

### ls -l file_copy.txt

-rw-r--r-- 2 srudnytsky srudnytsky 0 Apr 21 19:33 file_copy.txt

### chmod 444 file_copy.txt && ls -l

total 0
-r--r--r-- 2 srudnytsky srudnytsky  0 Apr 21 19:33 file_copy.txt
-r--r--r-- 2 srudnytsky srudnytsky  0 Apr 21 19:33 file_hardlink.txt
lrwxrwxrwx 1 srudnytsky srudnytsky 13 Apr 21 19:37 file_symlink.txt -> file_copy.txt
-rw-r--r-- 1 srudnytsky srudnytsky  0 Apr 21 19:35 lab2.txt

### chmod u+w file_copy.txt && ls -l

total 0
-rw-r--r-- 2 srudnytsky srudnytsky  0 Apr 21 19:33 file_copy.txt
-rw-r--r-- 2 srudnytsky srudnytsky  0 Apr 21 19:33 file_hardlink.txt
lrwxrwxrwx 1 srudnytsky srudnytsky 13 Apr 21 19:37 file_symlink.txt -> file_copy.txt
-rw-r--r-- 1 srudnytsky srudnytsky  0 Apr 21 19:35 lab2.txt

### umask

0022

### umask 023 && umask

0023

# Task 4

### sudo useradd -m -s /bin/bash trainee

[sudo] password for srudnytsky: 

### sudo passwd trainee

New password: 
Retype new password: 
passwd: password updated successfully

### sudo usermod -aG sudo trainee

### cat /etc/passwd | grep trainee

trainee:x:1001:1001::/home/trainee:/bin/bash