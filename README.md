For Server-side scripts, you need to grant them permission to each one as follows

sudo chmod 777 start-file-listener.sh
sudo chmod 777 start-case.sh
sudo chmod 777 close-case.sh

You can then load an investigation file called 'test' , for example as follows

./start-case.sh test

The command above will open a folder called test in the directory where you've run the command

On the Victim/Target Windows machine
