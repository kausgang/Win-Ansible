IMAGE_NAME = "ubuntu/trusty64"


Vagrant.configure("2") do |config|

    config.vm.define "controller" do |controller|

        controller.vm.provider "virtualbox" do |v|
            v.name    = "controller"
        end

        # controller.vm.box = "minimal/xenial64"
        controller.vm.box = IMAGE_NAME

        controller.vm.box_check_update  = false
        controller.vm.hostname = "controller"
        
        controller.vm.network "public_network", ip: "192.168.1.200"

        controller.vm.synced_folder ".", "/vagrant_data"

        controller.vm.provision "shell",
            path: "./files/controller-bootstrap.sh"
        
    end



    config.vm.define "target" do |target|

        
        target.vm.box = IMAGE_NAME

        target.vm.box_check_update  = false
        target.vm.hostname = "target"
        
        target.vm.network "public_network", ip: "192.168.1.210"

        target.vm.provider "virtualbox" do |vb|
            vb.name = "target"
            
            ## Optional Parameters
            # vb.memory = "7000"
            # vb.cpus = 2
            # vb.gui = true
            ## https://coderwall.com/p/n2y79g/vagrant-virtualbox-ubuntu-no-internet-access
            # vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
            # vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]

        end

        target.vm.synced_folder ".", "/vagrant_data"

        target.vm.provision "shell",
            path: "./files/target-bootstrap.sh"
            
    end


    
  
end
