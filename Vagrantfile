# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/xenial64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "/opt/data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 1
    vb.memory = "1024"
  end

  config.vm.define "k8s-master" do |k8sMaster|
    # vmGit.vm.network "forwarded_port", guest: 80, host: 8080
    k8sMaster.vm.network "private_network", ip: "192.168.33.200"

    # 虚拟机配置，这里配置的是virtualbox
    k8sMaster.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = "2048"
      # 显示名称
      vb.name = 'k8s-master'
    end

    k8sMaster.vm.provision "shell", run:'always', inline: <<-SHELL
      echo "start k8s-start"
      sudo snap install kubectl --classic
    SHELL

  end

  config.vm.define "k8s-node01" do |k8sNode01|
    # vmCI.vm.network "forwarded_port", guest: 80, host: 8081
    k8sNode01.vm.network "private_network", ip: "192.168.33.201"

    k8sNode01.vm.provider "virtualbox" do |vb|
      vb.name = 'k8s-node-01'
    end

    k8sNode01.vm.provision "shell", run:'always', inline: <<-SHELL
      echo "start k8s-node-01" 
    SHELL
  end

  config.vm.define "k8s-node02" do |k8sNode02|
    # vmCI.vm.network "forwarded_port", guest: 80, host: 8081
    k8sNode02.vm.network "private_network", ip: "192.168.33.202"

    k8sNode02.vm.provider "virtualbox" do |vb|
      vb.name = 'k8s-node-02'
    end

    k8sNode02.vm.provision "shell", run:'always', inline: <<-SHELL
      echo "start k8s-node-02"
    SHELL
  end

  # install docker-ce
  config.vm.provision "shell" do |s|
    s.path = "./sh/install-docker.sh"
  end

  # install docker-ce
  config.vm.provision "shell" do |s|
    s.path = "./sh/install-cri-tools.sh"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get install -y socat
    sudo snap install kubelet --classic
    sudo snap install kubeadm --classic
  SHELL

end
