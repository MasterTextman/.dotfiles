#!/bin/bash
cd ~
rm .ssh/id_rsa
echo -e "\n\n\n" | ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
