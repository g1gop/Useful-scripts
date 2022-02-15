#!/bin/bash
echo "Backup or Restore Custom Menu Items?"
select yn in "Backup" "Restore"; do
    case $yn in
        "Backup")
            echo "Backing up ..."
            sudo tar -czvf /home/alan/extdisk/VMachines/Backups/customemenuitems.tar.gz /home/alan/.config/menus/cinnamon-applications.menu /home/alan/.local/share/applications
	    echo "Done"
            break;;
        "Server")
            echo "Restoring  ..."
            sudo tar -xzvf /home/alan/extdisk/VMachines/Backups/customemenuitems.tar.gz /home/alan/.config/menus/cinnamon-applications.menu /home/alan/.local/share/applications

	    echo "Done"   
            break;;
 esac
done
        






s

