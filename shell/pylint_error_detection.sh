#grep -i \|error* pylint.log  | head -1
#grep -i \|error* pylint.log  | head -1 | cut -c2,3
#var=grep -i \|error* pylint.log  | head -1  | cut -c32
var1=$(grep -i \|error* pylint.log  | head -1  | cut -c32);
var2=$(grep -i \|error* pylint.log  | head -1  | cut -c33-37);
echo $var1
if [ $var1 == = ]
	then
	echo " The checkin is Good to go"
#	echo $var2
elif [ $var1 == + ]
	then
	echo " The previous checkin has introduced $var2 errors in the build hence failing the build"
#	echo +$var2
	exit 1;

elif [ $var1 == - ]
	then
	echo  " The previous checkin has removed $var2 errors"
#	echo -$var2
else
	echo "None of condition are met some problem with the build job  Please check it"

fi 


