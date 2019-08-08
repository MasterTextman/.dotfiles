#!/bin/bash
cd ~
cp .ssh/id_rsa .ssh/id_rsa`ls id_rsa* | wc -l`
rm .ssh/id_rsa
echo -e "\n\n\n" | ssh-keygen -t rsa
cat .ssh/id_rsa.pub
