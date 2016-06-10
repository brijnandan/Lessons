##This is document for installing gitlab on centos 7.

1. Install cent os 7 on the box.
2. run a "yum update" on centos box.
this will install all the required softwares on  the box  which includes openssh. This will enable you to ssh from any terminal.

####run below commands to initiate the installation.

1. sudo yum install curl policycoreutils openssh-server openssh-clients
	
   This install curl package download(used for file transfers in url format), policycoreutils(python package for managing SE linux environment. , openssh server and client. <br />
   sudo systemctl enable sshd <br />
   sudo systemctl start sshd <br />

2. sudo yum install postfix <br />
   This install the mailing package which is uses bu gitlab.<br />
   sudo systemctl enable postfix.<br />
  (postfix is linux service which gitlab uses to send out emails) <br /> 
  sudo systemctl start postfix<br />

3.sudo firewall-cmd --permanent --add-service=http<br />
  sudo systemctl reload firewalld<br />

Gitlab basically uses chef for its software configuration management. <br />
there are two important files used by chef for its configuration.<br />

first is /etc/gitlab/gitlab.rb <br />
gitlab.rb is the file where we need to make the changes <br />

second file is /var/opt/gitlab/gitlab-rails/etc/gitlab.yml<br />
This file is changed by gitlab.rb do not directly change this file. If it is done it gets erased every time you run "sudo gitlab-ctl reconfigure" <br />

 So any change done in gitlab.rb show follow running sudo gitlab-ctl reconfigure <br />
 
 
## upgrading gitlab from yum.  <br />
 
 sudo yum install gitlab-ce

### logs location for debugging.<br />

application logs : /var/log/gitlab/gitlab-rails/application.log <br />
The above logs gives the details about all the logs which are related to operatins done in github.

for emails :  for SMTP debugging the postfix logs are located at /var/log/mailog 
these are the logs which are helpful for debugging email notifications problem.

There are mutiple logs related to the different components of the gitlab. these are located at /var/log/gitlab  it contains application server nginx, postgresql and some other services



### smtp configuration for gitlab 

The changes to your smtp configuration can be done in file /etc/gitlab/gitlab.rb 
I am using gmail host as smtp provider so below are configuration to change in the file <br />

gitlab_rails['smtp_enable'] = true<br />
gitlab_rails['smtp_address'] = "smtp.gmail.com"<br />
gitlab_rails['smtp_port'] = 587 <br />
gitlab_rails['smtp_user_name'] = "email@cloudbyte.com"<br />
gitlab_rails['smtp_password'] = "password"<br />
gitlab_rails['smtp_domain'] = "smtp.gmail.com"<br />
gitlab_rails['smtp_authentication'] = "login"<br />
gitlab_rails['smtp_enable_starttls_auto'] = true<br />
gitlab_rails['smtp_tls'] = false<br />
gitlab_rails['smtp_openssl_verify_mode'] = 'peer' # Can be: 'none', 'peer', 'client_once', 'fail_if_no_peer_cert', see http://api.rubyonrails.org/classes/ActionMailer/Base.html

We need to run sudo "gitlab-ctl reconfigure" inorder to change the settings done or else the changes will not be reflected to the setup.
