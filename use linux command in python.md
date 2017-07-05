（1）python 2.x
which python

#!/usr/bin/python

import commands

commands.getoutput('ls')
commands.getstatusoutput('ls')

（2）python 3.x

which python3

#!/usr/bin/python3

subprocess.getoutput('ls')
subprocess.getstatusoutput('ls -alh')

ret,out = subprocess.getstatusoutput('ls -alh')
for line in out.split('\n'): print(line)