Vagrant.configure("2") do |config|
  config.vm.box = "mcandre/vagrant-smartos-pkgsrc"
  config.vm.box_version = "0.0.3"

  # Fix vagrant package
  config.ssh.insert_key = false

  config.vm.provision "shell", path: "bootstrap.sh"
end
