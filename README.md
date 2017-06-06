# buildengineer guide
1. It is assumed that you have Vagrant installed on your machine for this exercise if not see 
   https://www.vagrantup.com/intro/getting-started/ on how to download and configure Vagrant
2. It is assumed that you have VirtualBox installed on your machine for this exercise if not see
   https://www.virtualbox.org/ on how to download and configure VirtualBox 
3. Clone or download the repo
4. Unzip or extract the files into a folder or directory of your choice
5. Edit this line in Vagranfile : centos.vm.network :"private_network", ip: "192.168.56.110"
6. Change or modify the IP address to your private VirtualBox Host-Only Network address
7. Change to the directory you extracted the repo files
8. Run this command from prompt: "vagrant up centos --provision"
9. It will take about 25 mins for it to complete and do the followings:
	    (a) It will launch a centOS 7 Vagrant Vm
	    (b) Configure the VM with an IP address reachable to the hosting machine
	    (c) Ansible installed and configured as provisioner
	    (d) Install and start Docker
	    (e) Build a Docker image  based on the official Alpine Linux 
	    (f) Install, configure and start NGINX container to serve "Hello World" content
10. To access the "Hello World" webpage type http://xxxx.xxxx.xxxx.xxxx the IP you assigned in (5) above
    in my case i used http://192.168.56.110 
11. Added a little test script to confirm nginx webserver containter is running, to run the script logon to the vagrant box with user         vagrant, cd /tmp and then sudo ./test , it should say "NGINX Container is running
12. To cleanup after the exercise issue "vagrant destroy centos" from the prompt and no cruft is left on your machine
