# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-6.5"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "wordpress", "/var/www/html"
  # config.vm.synced_folder "wordpress", "/var/www/html", owner: 'apache', group: 'apache'

  config.vbguest.auto_update = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
  end
end
