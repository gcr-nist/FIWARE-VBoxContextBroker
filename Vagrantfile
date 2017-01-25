Vagrant.configure("2") do |config|
  config.vm.box = "centos/6"
  config.vm.network :private_network, ip: '192.168.50.105'
  config.vm.network :forwarded_port, guest: 22, host: 2225, id: 'ssh'
  config.vm.network :forwarded_port, guest: 1026, host: 1026
  config.ssh.insert_key = false
  config.vm.provider "virtualbox" do |vb|
	# force cable connected on VB
	vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
    # Display the name of the virtualbox 
    vb.name = "FIWARE"
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Set the machine settings
    vb.customize [
      "modifyvm", :id,
      "--memory", "4096",
      "--vram", "32",
      "--cpus", "2",
      "--monitorcount", "1",
      "--accelerate3d", "off",
    ]
  end
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbook.yml" 
  end
end