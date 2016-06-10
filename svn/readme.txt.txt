## This file contains the svn commands

1. Command to identify the list of changes done by the user.
  svn log svn://url -v -r version_from:version_to | sed -n '/us ername/,/-----$/ p'