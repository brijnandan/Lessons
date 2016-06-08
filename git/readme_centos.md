##This is document for installing gitlab on centos 7.

1. Install cent os 7 on the box.
2. run a "yum update" on centos box.
this will install all the required softwares on  the box  which includes openssh. This will enable you to ssh from any terminal.

run below commands to innitiate the installation.

sudo yum install curl policycoreutils openssh-server openssh-clients

this install curl package download(used for file transfers in url format), policycoreutils(python package for managing SE linux environment. , openssh server and client. <br />
sudo systemctl enable sshd <br />
sudo systemctl start sshd <br />
sudo yum install postfix <br />
this install the mailing package which is uses bu gitlab.<br />
sudo systemctl enable postfix.<br />
(postfix is linux service which gitlab uses to send out emails) <br /> 
sudo systemctl start postfix<br />
sudo firewall-cmd --permanent --add-service=http<br />
sudo systemctl reload firewalld<br />

gitlab basically uses chef for its software configuration management. <br />
there are two important files used by chef for its configuration.<br />

first is /etc/gitlab/gitlab.rb <br />
gitlab.rb is the file where we need to make the changes <br />

second file is /var/opt/gitlab/gitlab-rails/etc/gitlab.yml<br />
This file is changed by gitlab.rb do not directly change this file. If it is done it gets erased every time you run "sudo gitlab-ctl reconfigure" <br />

 So any change done in gitlab.rb show follow running sudo gitlab-ctl reconfigure <br />
 
 
<h4> upgrading gitlab from yum.  <br />
 
 sudo yum install gitlab-ce
 





