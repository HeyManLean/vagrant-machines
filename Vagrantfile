# -*- mode: ruby -*-
# vi: set ft=ruby :

# 插件
required_plugins = %w(vagrant-share vagrant-vbguest vagrant-disksize)
return if !Vagrant.plugins_enabled?
plugins_to_install = required_plugins.select { |plugin| !Vagrant.has_plugin? plugin }
if plugins_to_install.any?
  system "vagrant plugin install #{plugins_to_install.join(' ')}"
  exit system 'vagrant up'
end

Vagrant.configure("2") do |config|
  config.vm.define "dev1" do |dev1|

    dev1.vm.box = "ubuntu/bionic"
    dev1.vm.hostname = "dev"
    dev1.vm.box_check_update = false
    dev1.disksize.size = '8GB'

    # 设置网络
    dev1.vm.network "private_network", type: "dhcp"
    dev1.vm.network "public_network", bridge: "en0: Wi-Fi (Wireless)"

    # 配置
    dev1.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end

    $script = "/bin/bash --login /vagrant/bootstrap.sh"
    dev1.vm.provision :shell, privileged: false, inline: $script
  end

  config.vm.define "dev2" do |dev2|

    dev2.vm.box = "ubuntu/bionic"
    dev2.vm.hostname = "dev"
    dev2.vm.box_check_update = false
    dev2.disksize.size = '8GB'

    # 设置网络
    dev2.vm.network "private_network", type: "dhcp"
    dev2.vm.network "public_network", bridge: "en0: Wi-Fi (Wireless)"

    # 配置
    dev2.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
    $script = "/bin/bash --login /vagrant/bootstrap.sh"
    dev2.vm.provision :shell, privileged: false, inline: $script
  end

  config.vm.define "dev3" do |dev3|

    dev3.vm.box = "ubuntu/bionic"
    dev3.vm.hostname = "dev"
    dev3.vm.box_check_update = false
    dev3.disksize.size = '8GB'

    # 设置网络
    dev3.vm.network "private_network", type: "dhcp"
    dev3.vm.network "public_network", bridge: "en0: Wi-Fi (Wireless)"

    # 配置
    dev3.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
    $script = "/bin/bash --login /vagrant/bootstrap.sh"
    dev3.vm.provision :shell, privileged: false, inline: $script
  end

  config.vm.define "dev4" do |dev4|

    dev4.vm.box = "ubuntu/bionic"
    dev4.vm.hostname = "dev"
    dev4.vm.box_check_update = false
    dev4.disksize.size = '8GB'

    # 设置网络
    dev4.vm.network "private_network", type: "dhcp"
    dev4.vm.network "public_network", bridge: "en0: Wi-Fi (Wireless)"

    # 配置
    dev4.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
    end
    $script = "/bin/bash --login /vagrant/bootstrap.sh"
    dev4.vm.provision :shell, privileged: false, inline: $script
  end

end
