echo "[TASK] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
192.168.1.200   controller
192.168.1.210   target
EOF


echo "[TASK] - Install Ansible"
apt update -qq >/dev/null 2>&1
apt install -y software-properties-common >/dev/null 2>&1
apt-add-repository ppa:ansible/ansible >/dev/null 2>&1
apt-get update -qq >/dev/null 2>&1
apt-get install -y ansible >/dev/null 2>&1

echo "[TASK] - setup passwordless authentication"
cat /dev/zero | ssh-keygen -q -t rsa -f /home/vagrant/.ssh/id_rsa -N "" 
cp /home/vagrant/.ssh/id_rsa.pub /vagrant_data/files/auth-key 
chown -R vagrant:vagrant .ssh 



echo "[ANSIBLE] setup hosts"
echo "target" >> /etc/ansible/hosts 