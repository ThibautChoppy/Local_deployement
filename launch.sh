#!/bin/bash

####   Author : Thibaut Choppy
####  Version : V1.0
####     Date : 7/09/2020

normal=$(tput sgr0)
yellow=$(tput setaf 11)
red=$(tput setaf 1)
blue=$(tput setaf 4)

line=$(python3 -c print'("-" * 80)')
columns="80"

Mode=0

function usage {
cat << EOF
Usage: $0 [-v]
Install new desktop environment

Option :
          -h                        Display help
          -v                        Run script in verbose mode. Will print out each step of execution.
EOF
}

function display_center {
    len=${#2}
    modulo=$(expr $len % 2)
    sizeA=$(((columns + len - 2) / 2))
    sizeB=$(((columns - len -2) / 2 + modulo))

    printf "%s%s\n|" $3 $line
    printf "%s%*s%*s" $1 $sizeA "$2" $sizeB ""
    printf "%s|\n%s\n%s" $3 $line $normal
}

function start_ansible {
  echo "Enter your user password"
  case $Mode in
    0) ansible-playbook --ask-become-pass ./main.yml ;;
    1) ansible-playbook --ask-become-pass ./main.yml -v ;;
  esac
}

while getopts ":b:hv" option
do
 case $option in
    v) ((Mode=Mode+1)) ;;
    h) usage
       exit ;;
   \?) echo "Bad Flag !"
       exit
 esac
done

display_center $normal "Starting Script" $normal

display_center $yellow "Update and upgrade System" $yellow
sudo apt -y update && sudo apt -y upgrade

display_center $yellow "Installation of Ansible" $yellow
sudo apt install ansible

display_center $red "Start Deployment" $red
start_ansible

display_center $blue "Computer ready !" $blue