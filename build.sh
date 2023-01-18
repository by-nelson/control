#!/bin/bash

sudo yum -y install ansible

ansible-playbook playbooks/update_ansible.yml -K

sudo yum -y uninstall ansible
hash -r

ansible-playbook playbooks/install_tools.yml -K