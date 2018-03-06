BOX=vagrant-smartos-rust.box

.PHONY: launch-vm clean-isos clean-vm clean-boxes clean-vagrant-metadata

launch-vm: Vagrantfile bootstrap.sh
	vagrant up

test: launch-vm
	vagrant ssh -c "cd /opt/vagrant && rustc hello.rs && ./hello"

clean-isos:
	-rm -rf *.iso

clean-vm:
	-vagrant destroy -f

clean-boxes:
	-rm -rf *.box

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vm clean-isos clean-vagrant-metadata

$(BOX): export.Vagrantfile clean launch-vm
	vagrant package --output $(BOX) --vagrantfile export.Vagrantfile
