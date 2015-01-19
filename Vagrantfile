# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-6.5"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "wordpress", "/var/www/html"

  config.vbguest.auto_update = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    # ansible.tags = ["wp-cli"]
  end
end
