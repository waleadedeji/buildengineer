Vagrant.configure("2") do |config|

	config.vm.define "centos" do |centos|
		centos.vm.box = "relativkreativ/centos-7-minimal"
		centos.vm.box_check_update = false
#		centos.vm.network "forwarded_port", guest: 80, host: 8181

		centos.vm.network :"private_network", ip: "192.168.56.110"
		
		centos.vm.provider "virtualbox" do |vb|
			vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
			vb.customize ["modifyvm", :id, "--memory", 1024]
			vb.customize ["modifyvm", :id, "--name", "centos"]
			vb.gui = false
#			vb.memory = "1024"
		end
	end

  #
  # Run Ansible from the Vagrant VM
  #
  config.vm.provision "ansible_local" do |ansible|
	ansible.install_mode = "pip"
    ansible.verbose = "vvvv"
	ansible.install = true
	ansible.playbook = "playbook.yml"
	
  end

end