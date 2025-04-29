Vagrant.configure("2") do |config|

  config.vm.box = "centos/stream9"
  config.vm.box_version = "20250414.0"
  config.vm.hostname = "docker-centos-stream9"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "centos-docker"
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "shell", path: "setupdocker.sh"


end