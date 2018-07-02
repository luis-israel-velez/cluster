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
