# Cluster
Hive mind!

Alpha-connection

lara-connection 


https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

Fab Example:
fab <function>:'echo hello'
#last part is optional


Link to docker installation (Cluster Level) 

https://medium.freecodecamp.org/the-easy-way-to-set-up-docker-on-a-raspberry-pi-7d24ced073ef

cmd="curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh"

Then alias for docker-compose 

echo alias docker-compose="'"'docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/rootfs/$PWD" \
    -w="/rootfs/$PWD" \
    docker/compose:1.13.0'"'" >> ~/.bashrc
   
source ~/.bashrc
