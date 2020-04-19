#!/bin/bash

# example :
#
#[ "$architecture" == "amd64" ] && image=statping/statping
#[ "$architecture" == "i386" ]  && image=statping/statping
#[ "$architecture" == "armhf" ] && image=portainer/portainer:linux-arm-1.14.0
#[ -z $image ] && ynh_die "Sorry, your $architecture architecture is not supported ..."
#
image=statping/statping
options="-p $port:8080 -v $data_path/data:/app -e \"host=$(ip r s 0/0 | awk '{print $3}')\""

docker run -d --name=$app --restart always $options $image
#echo $?
