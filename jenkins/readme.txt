This is the file which gives info about the particular module

Plugins used in jenkins with description:

1: violations : This plugin basically gives the description about the various analysis reports like pylint,findbugs,static analysis reports

2. Pylint with jenkins:  We need to produce a pareseable(only) file and set the path to violations plugin to see the report in jenkins. Pylint can also produce html reports and txt reports.

3. File system trigger: It runs a poll on file system by which it can trigger a build according to the changes in particular folder.