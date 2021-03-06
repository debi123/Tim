
#!/bin/sh
#!/usr/bin/expect -f
##apt-get install ssh

ls

cp run.py /home
chmod 777 run.py

cp run.sh /home
chmod 777 run_h.sh

cp sample_commands.txt /home
chmod 777 sample_commands.txt

cp list.txt /home
chmod 777 list.txt

apk update

apk add openssh

apk add sshpass

apk add scp

sshpass -p 'Welcome@321' scp -o "StrictHostKeyChecking no" run.py hduser1@10.63.33.207:/home/hduser1
sshpass -p 'Welcome@321' scp -o "StrictHostKeyChecking no" run_h.sh hduser1@10.63.33.207:/home/hduser1
sshpass -p 'Welcome@321' scp -o "StrictHostKeyChecking no" sample_commands.txt hduser1@10.63.33.207:/home/hduser1
sshpass -p 'Welcome@321' scp -o "StrictHostKeyChecking no" list.txt hduser1@10.63.33.207:/home/hduser1


sshpass -p 'Welcome@321' ssh -o "StrictHostKeyChecking no" hduser1@10.63.33.207 <<!
ls /home/hduser1/*
. /home/hduser1/run_h.sh
!
