@REM vagrant plugin install vagrant-vbguest
@REM vagrant plugin install vagrant-scp
vagrant destroy -f controller target
vagrant up
vagrant ssh controller -c "ssh-keyscan -H target >> /home/vagrant/.ssh/known_hosts"

@REM extract the private keys for ssh connection
md putty-connection-setting
copy .vagrant\machines\controller\virtualbox\private_key .\putty-connection-setting\controller-private_key.ppk
copy .vagrant\machines\target\virtualbox\private_key .\putty-connection-setting\target-private_key.ppk