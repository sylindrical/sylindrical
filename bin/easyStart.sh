#!/bin/bash
#
#

username=$1

printf "%s" "Enter name: "
read username


scriptFold="/home/$username/coreComp/bin"

config_folder="/home/$username/coreComp/config"
name_file=$config_folder"/username"


sys_folder=$scriptFold"/system"
service_name="combine-power.service"
mainScript="combine-power.sh"
sys_file=$sys_folder"/$service_name"
mainScript_file="$scriptFold/$mainScript"


template_sys_file="[Unit]\n
Description=\"transform cpu state to low-power mode\"\n
After=suspend.target\n
\n

[Service]\n
ExecStart=/bin/bash $mainScipt_file\n
\n


[Install]\n
WantedBy=multi-user.target\n
"

# Start
#



function testFolder {
	if [ -d "$scriptFold" ] &&  [ -d "$config_folder" ]  && [ -e "$name_file"  ]; then
		echo "home folder for $config_folder exists"
		return 0
	else
		echo "error ! home folder for $config_folder doesn't exist"
		return 1
	fi
}	

function createSysFile
{
	if [ -e "$sys_file" ]; then
		rm $sys_file
   		echo -e $template_sys_file > $sys_file
		return 0
	else
		echo -e $template_sys_file > $sys_file
		return 0
	fi
}
function copyUnitToSys
{
	sudo cp $sys_file /etc/systemd/system/$service_name
	sudo chmod a+x /etc/systemd/system/$service_name
}
testFolder

if [ $? -eq 0 ]; then
	echo $username > $name_file
	createSysFile
	copyUnitToSys
	echo "completed setup"
else
	echo "cannot setup; error"
fi


