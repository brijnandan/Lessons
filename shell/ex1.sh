echo " This is the shell script......"
echo " which takes only one agrument...."
echo " creates a file with that that argument name provides permission to the specific user"

#if [ -f $1.txt ]
#	then
#	{
#	echo " the file is a regular file "
#	chmod 755 $1.txt
#	}
#	else
#	echo " not a regular file "
#fi

if  [ "$#" -eq 0 ] || [ "$#" -gt 1 ] 
	then
	{
	echo " the usage of the script is not correct "
	echo " there should be exactly one command line arg"
	echo " Usage ./ex1.sh filename "
	}
	else
		touch $1.txt
		if [ -f $1.txt ]   #checks if the file is a regular file 
			then
			{
				echo " the file is a regular file "
				chmod 755 $1.txt
			}
			else
				echo " not a regular file "
		fi
		echo " none"
fi
	
