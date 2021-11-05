Vagrant.configure("2") do |config|


  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |v|
    v.name = "desafio-devops-pablo"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml"
  end

  config.vm.provision "shell", inline: <<-SHELL
     docker -v
     docker-compose -v
     cd ~ && git clone https://github.com/pablords/desafio-devops.git
     ls && cd desafio-devops
     docker-compose up -d
  SHELL
end
