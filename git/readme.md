##This doc describes how to install and understand the concepts of gitlab. 

reasons for choosing gitlab.<br />
1. community edition is free. <br />
2. easy installation.<br />
3. UI features.<br />
4. No seperate review software required.<br />
5. minimal configuration from backend.<br />

### The documents has below mentioned topics,
### 1. requirements and installation.




1. requirements and installation.
==================================

gitlab installation binaries comes for different operating systems. I am using ubuntu 14.04 for my installation. depending on the no of users we can choose the hardware configuration.

The latest package for gitlab is GitLab CE Omnibus package as of june 2016.

step 1. On your terminal run  command  "sudo apt-get install curl openssh-server ca-certificates postfix"
The above command installs curl , openssh server and postfix(which will be used for sending smtp notification by gitlab).

step 2.run " curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash" 

curl installed in step 1 will be used here to download and run the shell script which will map the gitlab installer to your local machine.

step 3. run "sudo apt-get install gitlab-ce".

this step will install gitlab community edition to your ubuntu machine. Running this command might require a bit of patience as when i ran it initially it hange  immediately . It appears that the command is hanged as the progress bar shows the progress 0.
After a lot of search found that this is usuall for most cases . this script takes aroung 2-3 hours for installtion. 
In my case it failed for the first time saying some packages are missing as command failed to downlaod some packages.
so ran "sudo apt-get install gitlab-ce --fix-missing"
after this it will show the installation has been successful.



"Hi Hello"
