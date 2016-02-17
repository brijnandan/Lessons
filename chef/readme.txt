Chef installation:


1. download chef server.


2. install using dpkg 
devstack@devstack:~$ sudo dpkg -i chef-server-core_12.4.1-1_amd64.deb 
Selecting previously unselected package chef-server-core.
(Reading database ... 285249 files and directories currently installed.)
Preparing to unpack chef-server-core_12.4.1-1_amd64.deb ...
Unpacking chef-server-core (12.4.1-1) ...
Setting up chef-server-core (12.4.1-1) ...



3.Write the Chef server configuration file
Having a separate configuration step gives you the chance to make any additional changes before you start the server.


4. configuring chef server.
 sudo chef-server-ctl reconfigure  

5. after above command we see the below op

Chef Client finished, 392/458 resources updated in 02 minutes 48 seconds
Chef Server Reconfigured!

6.  Install the management console and reporting features

step1: sudo chef-server-ctl install opscode-manage
    2: sudo chef-server-ctl reconfigure
    3: sudo opscode-manage-ctl reconfigure


Step2. for installing reporting features.

	1.sudo chef-server-ctl install opscode-reporting 
	2.sudo chef-server-ctl reconfigure
	3.sudo opscode-reporting-ctl reconfigure

7. creating an administrator account and an organization.

sudo chef-server-ctl user-create test test test brijnandan@cloudbyte.com test123 --filename test.pem


sudo chef-server-ctl user-create ADMIN_USER_NAME ADMIN_FIRST_NAME ADMIN_LAST_NAME ADMIN_EMAIL ADMIN_PASSWORD --filename ADMIN_USER_NAME.pem


ADMIN_USER_NAME.pem is the rsa private key which enables us to run knife commands against server.



8. creating the organization
sudo chef-server-ctl org-create ORG_SHORT_NAME "ORG_LONG_NAME" --association_user ADMIN_USER_NAME

sudo chef-server-ctl org-create cloudbyte  "cloudbyte inc" --association_user test

above command generates a rsa key



9. Download the starter kit to your machine from where you want to administer itthe mistake commited by me was i did not give ip address of chef server instead of localhost
we need to change rb file in this case.

knife ssl fetch


E:\Docs\CBdocs\chef\chef-repo>knife ssl fetch
WARNING: Certificates from 10.10.113.10 will be fetched and placed in your trust
ed_cert
directory (e:\docs\cbdocs\chef\chef-repo\.chef\trusted_certs).

Knife has no means to verify these are the correct certificates. You should
verify the authenticity of these certificates after downloading.

Adding certificate for localhost in e:\docs\cbdocs\chef\chef-repo\.chef\trusted_
certs/localhost.crt








________________________________________________________________________________________

some urls to remember.
https://learn.chef.io/install-and-manage-your-own-chef-server/linux/install-chef-server/install-chef-server-using-your-hardware/


https://learn.chef.io/install-and-manage-your-own-chef-server/linux/manage-a-node-on-your-chef-server/  till here done


https://learn.chef.io/manage-a-node/windows/get-a-node-to-bootstrap/
______________________________________________________________________________


generating a chef cookbook:

1> you have to install chef development kit in your environment.
next step is to create recipes.

2>chef generate cookbook cookbooks/hello_chef_server

issue run it from cookbooks folder.
write the recipes and then upload them to chef server.

3>knife cookbook upload hello_chef_server


4>  to list the cookbooks we need to run below command.

knife cookbook lits



