#! /bin/bash
select=$(zenity --list --text="What do you want to do ?" --column="Select" "Suspend" "Restart" "Shutdown");
if [ "$select" = "Suspend" ];
then
        /usr/local/bin/pwr_save.sh
elif [ "$select" = "Restart" ];
then
        reboot
elif [ "$select" = "Shutdown" ];
then
        /usr/local/bin/pwr_kill.sh
fi

