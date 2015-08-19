# Author : Morgan 開店123
# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.define "Shop" do |node|

    node.vm.box = "MC3/NovelShop"
    node.vm.box_version = ">= 0.0.1"

    node.ssh.username = 'shopper'
    node.ssh.password = 'novellinkshop!@#'
    node.ssh.pty = 'ture'

    # node.vm.network "forwarded_port", guest: 80, host: 8080
    node.vm.network "private_network", ip: "192.168.56.194"
    # node.vm.network "public_network"

    node.vm.synced_folder ".", "/vagrant", disabled: true
    node.vm.synced_folder "./db", "/dbmyql"
    node.vm.synced_folder "./log", "/backup/log"
    node.vm.synced_folder "./code", "/code"
   
    node.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = "1024"
    end

  end

end
