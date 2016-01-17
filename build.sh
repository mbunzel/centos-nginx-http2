#!/bin/sh

echo "Building Nginx for RHEL/CentOS/SL 7...."

vagrant up
rsync -e "ssh -p2222 -i $HOME/.vagrant.d/insecure_private_key -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" vagrant@127.0.0.1:rpmbuild/RPMS/x86_64/* packages/
rsync -e "ssh -p2222 -i $HOME/.vagrant.d/insecure_private_key -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" vagrant@127.0.0.1:rpmbuild/SRPMS/* packages/
vagrant destroy

