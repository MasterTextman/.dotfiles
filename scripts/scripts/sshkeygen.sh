#!/bin/bash
if  [ -f "$HOME/.ssh/id_rsa.pub" ]; then
    echo "Key already exists."
    cat ~/.ssh/id_rsa.pub
else
    echo "Key doesn't exist, creating..."
    echo -e "\n\n\n" | ssh-keygen -t rsa
    cat .ssh/id_rsa.pub
fi
