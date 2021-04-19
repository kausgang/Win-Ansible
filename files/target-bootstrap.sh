echo "[TASK] Update /etc/hosts file"
cat >>/etc/hosts<<EOF
192.168.1.200   controller
192.168.1.210   target
EOF



echo "[TASK] add the key to authorized_key"
cat /vagrant_data/files/auth-key >> /home/vagrant/.ssh/authorized_keys 
#chown -R vagrant:vagrant .ssh 
chown -R vagrant:vagrant /home/vagrant/.ssh 
rm /vagrant_data/files/auth-key


