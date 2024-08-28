
#!/bin/bash
#
#
#
userName="sourSneeze"
# echo $PWD/"config/username"
#if [ -f $PWD/"config/username" ]; then
#	username = $(echo $PWD/"config/username")


curDir="/home/$userName/coreComp/bin"

sudo bash -c "$(cat $curDir/brightness-zero.sh)"
sudo bash -c "$(cat $curDir/p-state-buff.sh)"
#sudo bash -c "$(cat $curDir/power-save.sh)"
