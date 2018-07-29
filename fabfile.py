from fabric.api import *

env.hosts = [
	'pi@IP_1',
        'pi@IP_2',
        'pi@IP_3',
        'pi@IP_4',
]

env.password = 't0ps3cr3t!' #Not real password...

@parallel
def cmd(command):
	sudo(command)



def install_docker():
        sudo('curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -')
        sudo('sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"')
        sudo('sudo apt-get update')
        sudo('apt-cache policy docker-ce')
        sudo('sudo apt-get install -y docker-ce')
        sudo('sudo systemctl status docker')
