## This file contains the svn commands

1. Command to identify the list of changes done by the user.
  svn log svn://url -v -r version_from:version_to | sed -n '/us ername/,/-----$/ p'



  2. command to create branch from a particular revision point : svn copy -r3408 url_from  url_to -m "message"
