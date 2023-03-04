#!/bin/bash

# When server dies or docker won't work after reboot:

if [[ $(sudo service docker status) == *"active (running)"* ]]; then
	echo "Docker is running"
else
	echo "Docker is not running. Restarting..."
	sudo service docker start

	# Yacht
	sudo docker volume create yacht
	sudo docker run -d -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config selfhostedpro/yacht
	echo "Docker restarted"
fi
