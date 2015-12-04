echo "checking the Main ESX"

	ping -c 4 x.x.x.x   &> /dev/null  #devnull does not prints the output of command in the terminal
        esxmain=$(echo $?)
	echo $esxmain

echo "checking the BST node"
	
	ping -c 4 x.x.x.x   &> /dev/null
	bstnode=$(echo $?)
	echo $bstnode
 

echo "checking the dummy IP"
	ping -c 4  xx.xx.xx.xx 	&> /dev/null
	dummy=$(echo $?)
	echo $dummy


#conditions to check for 
	if [ $esxmain -ne 0 ]
		then
			echo " The main ESX is down"
	else
			echo " The Main ESX is UP and running"
	fi

	if [ $bstnode -ne 0 ]
		then
			echo " The BST node is down"
        else
			echo " The BST node is UP and running"
	fi


	

	if [ $dummy -ne 0 ] 
	then 
        echo  " the dummy node is down"
        else
			echo " The Dummy is UP and running"	
	fi

		
