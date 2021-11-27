Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.define 'controller' do |machine|
    machine.vm.synced_folder "./app", "/home/vagrant/app"
    machine.vm.synced_folder "./ansible", "/home/vagrant/ansible"
    machine.vm.network "private_network", ip: "172.17.177.11"
    config.vm.network "forwarded_port", guest: 8000, host: 8000
    machine.vm.provider "virtualbox" do |v|
      v.memory = 4048
      v.cpus = 4
      v.name = "controller"
    end
    machine.vm.provision :ansible_local do |ansible|
      ansible.playbook          = "playbook.yml"
      ansible.provisioning_path = "/home/vagrant/ansible"
      ansible.verbose           = true
      ansible.install           = true
      ansible.limit             = "all" # or only "nodes" group, etc.
      ansible.inventory_path    = "inventory"
    end
  end

end


