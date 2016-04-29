This is the file which gives info about the particular module

Plugins used in jenkins with description:

1: violations : This plugin basically gives the description about the various analysis reports like pylint,findbugs,static analysis reports

2. Pylint with jenkins:  We need to produce a pareseable(only) file and set the path to violations plugin to see the report in jenkins. Pylint can also produce html reports and txt reports.

3. File system trigger: It runs a poll on file system by which it can trigger a build according to the changes in particular folder.

4. Pylint command reads the configuration from the config file .cfg which helps in setting the diffrent properties while running the pylint analysis. A sample file is added in the repo as pylint1_4P6.cfg .

5. jenkins cli is the tool which provides a way to query jenkins from command line . One applcation is deleting the old build range from a job.

E:\CBdocs\temp>java -jar jenkins-cli.jar -s http://172.16.10.2:8080/  delete-bu
lds Machine_Controller '11-200'
Enter passphrase for C:\Users\admin\.ssh\id_rsa:
Deleted 190 builds
above is the example for deleting  build from the jobs.

syntax is shown as below

java -jar jenkins-cli.jar -s http://my.jenkins.host delete-builds myproject '1-7499' --username $user --password $password


jenkins Live developement jenkins: https://ci.jenkins-ci.org/view/Infrastructure/

https://documentation.cloudbees.com/docs/cookbook/_containers.html

https://github.com/jenkinsci/pipeline-plugin/blob/master/TUTORIAL.md
//pipeline tutorial
