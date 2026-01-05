## This Script Automation For Build Wordpress on Docker Compose

## Information

Before using this program, make sure to update the repository `sudo apt update` and install git `sudo apt install git -y` to maximize the running of the program. I am not responsible for any consequences caused by this program. It is recommended to use this script when the new server is installed. This program has been tested on Ubuntu Server 24.04 or Newer

## Features
* Simple Script For Build Wordpress
* Include Portainer for Manage Docker Container
* Activation Firewall

## Tested Version
* Ubuntu 24.04
* Newer

## Installing Program
```
root@ubuntu:/home/ubuntu# git clone https://github.com/anggrdwjy/wordpress-container.git
Cloning into 'wordpress-container'...
remote: Enumerating objects: 22, done.
remote: Counting objects: 100% (22/22), done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 22 (delta 4), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (22/22), 6.52 KiB | 444.00 KiB/s, done.
Resolving deltas: 100% (4/4), done.
root@ubuntu:/home/ubuntu# cd wordpress-container/
root@ubuntu:/home/ubuntu/wordpress-container# chmod -R 777 *
root@ubuntu:/home/ubuntu/wordpress-container# ls -l
total 8
drwxrwxrwx 2 root root 4096 Jan  5 01:25 support
-rwxrwxrwx 1 root root  784 Jan  5 01:25 wordpress_setup.sh
root@ubuntu:/home/ubuntu#
```

## Running Program
```
root@ubuntu:/home/ubuntu/wordpress-container# ./wordpress_setup.sh 
Hit:1 http://id.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://id.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://id.archive.ubuntu.com/ubuntu noble-backports InRelease
Get:4 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.5 kB]
Get:6 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:7 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [71.5 kB]
Get:8 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [212 B]
Fetched 220 kB in 2s (105 kB/s)            
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
* * * * * *
CONTAINER ID   IMAGE                        COMMAND                  CREATED          STATUS         PORTS                                                                              NAMES
a5f160c3405d   wordpress:latest             "docker-entrypoint.s…"   7 seconds ago    Up 4 seconds   0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   wordpress_app
34eac9a7ab04   mysql:latest                 "docker-entrypoint.s…"   11 seconds ago   Up 7 seconds   3306/tcp, 33060/tcp                                                                wordpress_db
4191387f2e66   portainer/portainer-ce:lts   "/portainer"             6 minutes ago    Up 6 minutes   8000/tcp, 9000/tcp, 0.0.0.0:19443->9443/tcp, [::]:19443->9443/tcp                  portainer
Rules updated
Rules updated (v6)
Rules updated
Rules updated (v6)
Rules updated
Rules updated (v6)
Command may disrupt existing ssh connections. Proceed with operation (y|n)? y
Firewall is active and enabled on system startup
● ufw.service - Uncomplicated firewall
     Loaded: loaded (/usr/lib/systemd/system/ufw.service; enabled; preset: enabled)
     Active: active (exited) since Mon 2026-01-05 01:22:15 UTC; 14min ago
       Docs: man:ufw(8)
   Main PID: 362 (code=exited, status=0/SUCCESS)
        CPU: 2ms

Jan 05 01:22:15 ubuntu systemd[1]: Starting ufw.service - Uncomplicated firewall...
Jan 05 01:22:15 ubuntu systemd[1]: Finished ufw.service - Uncomplicated firewall.
root@ubuntu:/home/ubuntu/wordpress-container# 

```

## Verification Docker
```
root@ubuntu:/home/ubuntu/wordpress-container# docker ps -a
CONTAINER ID   IMAGE                        COMMAND                  CREATED         STATUS         PORTS                                                                              NAMES
a5f160c3405d   wordpress:latest             "docker-entrypoint.s…"   3 minutes ago   Up 2 minutes   0.0.0.0:443->443/tcp, [::]:443->443/tcp, 0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   wordpress_app
34eac9a7ab04   mysql:latest                 "docker-entrypoint.s…"   3 minutes ago   Up 3 minutes   3306/tcp, 33060/tcp                                                                wordpress_db
4191387f2e66   portainer/portainer-ce:lts   "/portainer"             9 minutes ago   Up 8 minutes   8000/tcp, 9000/tcp, 0.0.0.0:19443->9443/tcp, [::]:19443->9443/tcp                  portainer
root@ubuntu:/home/ubuntu/wordpress-container# 
```


## Testing Access Web UI

Dashboard UI Portainer

```
https://ip-address:19443
```

NOTES : Please Harderning After Installation with SSL or Reverse Proxy. Hide

Default Dashboard Wordpress

```
http://ip-address:8080
```

Default Login Wordpress Admin

```
http://ip-address:8080/wp-admin
```

## Support

* [:octocat: Follow me on GitHub](https://github.com/anggrdwjy)
* [🔔 Subscribe me on Youtube](https://www.youtube.com/@anggarda.wijaya)


## Bugs

Please open an issue on GitHub with as much information as possible if you found a bug.
* Your Docker Version
* All the logs and message outputted
* etc
