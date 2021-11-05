
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.provision :docker
  config.vm.provision :docker_compose
  config.vm.network "forwarded_port", guest: 8000, host: 8000

   config.vm.provision "shell", inline: <<-SHELL
     docker -v
     docker-compose -v
     cd ~ && git clone https://github.com/pablords/desafio-devops.git
     ls && cd desafio-devops
     docker-compose up -d
   SHELL
end
