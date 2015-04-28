Vagrant.configure(2) do |config|
  config.vm.usable_port_range = (2200..2299)
  config.vm.network "forwarded_port", guest: 80, host: 2280, auto_correct: true
  config.vm.network "forwarded_port", guest: 3306, host: 2206, auto_correct: true
  config.vm.network "forwarded_port", guest: 9200, host: 9200, auto_correct: true

  config.vm.box = "ubuntu/trusty32"

  config.vm.network "private_network", ip: "192.168.1.10"
  config.vm.hostname = "siteanalyzer.local"

  config.vm.synced_folder ".", "/vagrant"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vbox|
    vbox.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vbox.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    vbox.memory = "1024"
  end

  config.vm.provision "shell", path: "vagrant/provisionning.sh"
  config.vm.provision "file", source: "./vagrant/node1.yml", destination: "es_node1/config/elasticsearch.yml"
  config.vm.provision "file", source: "./vagrant/node2.yml", destination: "es_node2/config/elasticsearch.yml"
  config.vm.provision "shell", path: "vagrant/start_cluster.sh"
end
