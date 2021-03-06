#!/bin/sh

set -Ceu

user=$1

# Set the machine's hostname.
mkdir -p known_hosts/
rm -f known_hosts/$user
./hostkey.sh $user > known_hosts/$user
./put.sh $user set-hostname.sh /home/ubuntu/set-hostname.sh
./login.sh $user chmod 755 set-hostname.sh
./login.sh $user ./set-hostname.sh $user.stack.probcomp.net
