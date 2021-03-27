1. First create Keys in host environment, EX: host:-> ssh-keygen -t rsa
2. Send newly created .ssh/id_rsa.pub to the locations you will be auto-logging. Ex: cat .ssh/id_rsa.pub | ssh b@B 'cat >> .ssh/authorized_keys'
3. Confirm auto-login
4. Also remember to set up .ssh/config with the following format:
Host <name of your choice>
     HostName <real name/ip>
