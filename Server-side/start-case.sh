#!bin/bash
usage(){
    echo "usage:$0<case number>"
    echo "Simple script to create case folder and start listeners"
    exit1
}
if [$# -lt 1]; then
    usage
else
    echo"Starting case $1"
fi
if the directory doesn't exist create it#
if [! -d  $1];then
    mkdir $1
fi
#Create the log listener
'nc -k -l 4444 >> $1/log.txt' &
echo "Started log listener for case $1 on $(date)" | nc localhost 4444

start the file listener#
'./start-file-listener.sh $1' &