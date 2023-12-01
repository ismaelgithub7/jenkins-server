#!/bin/bash
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
cp ~/.ssh/* /jenkins-ssh/
chmod 644 /jenkins-ssh/*
/usr/local/bin/jenkins.sh &
tail -f /dev/null