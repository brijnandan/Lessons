##This is document for installing gitlab on centos 7.

1. Install cent os 7 on the box.
2. run a "yum update" on centos box.
this will install all the required softwares on  the box  which includes openssh. This will enable you to ssh from any terminal.

run below commands to innitiate the installation.

sudo yum install curl policycoreutils openssh-server openssh-clients

this install curl package download(used for file transfers in url format), policycoreutils(python package for managing SE linux environment. , openssh server and client.
sudo systemctl enable sshd
sudo systemctl start sshd
sudo yum install postfix
this install the mailing package which is uses bu gitlab.
sudo systemctl enable postfix
sudo systemctl start postfix
sudo firewall-cmd --permanent --add-service=http
sudo systemctl reload firewalld

