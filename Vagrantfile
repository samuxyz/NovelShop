# Author : Morgan 開店123
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "Shop" do |node|
    # The most common configuration options are documented and commented below.
    # For a complete reference, please see the online documentation at
    # https://docs.vagrantup.com.
   
    # Every Vagrant development environment requires a box. You can search for
    # boxes at https://atlas.hashicorp.com/search.
    node.vm.box = "./NovelShop.box"
   
    # node.ssh.host = '192.168.56.194'
    # node.ssh.port = '22'
    node.ssh.username = 'shopper'
    node.ssh.password = 'novellinkshop!@#'
    node.ssh.pty = 'ture'
   
    # Disable automatic box update checking. If you disable this, then
    # boxes will only be checked for updates when the user runs
    # `vagrant box outdated`. This is not recommended.
    # node.vm.box_check_update = false
   
    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    # node.vm.network "forwarded_port", guest: 80, host: 8080
   
    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    node.vm.network "private_network", ip: "192.168.56.194"
   
    # Create a public network, which generally matched to bridged network.
    # Bridged networks make the machine appear as another physical device on
    # your network.
    # node.vm.network "public_network"
   
    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    node.vm.synced_folder ".", "/vagrant", disabled: true
    node.vm.synced_folder "./db", "/dbmyql"
    node.vm.synced_folder "./log", "/backup/log"
    node.vm.synced_folder "./code", "/code"
   
    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    node.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
        vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
        vb.memory = "1024"
    end
    #
    # View the documentation for the provider you are using for more
    # information on available options.
   
    # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
    # such as FTP and Heroku are also available. See the documentation at
    # https://docs.vagrantup.com/v2/push/atlas.html for more information.
    # node.push.define "atlas" do |push|
    #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
    # end
   
    # Enable provisioning with a shell script. Additional provisioners such as
    # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
    # documentation for more information about their specific syntax and use.
    # node.vm.provision "shell", inline: <<-SHELL
    #   sudo apt-get update
    #   sudo apt-get install -y apache2
    # SHELL
  end
end
