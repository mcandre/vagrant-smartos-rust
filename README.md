# vagrant-smartos-rust: a Vagrant box for building Rust binaries for SmartOS

# DISCLAIMER

Broken until pkgin gets a working rust package for recent editions of SmartOS.

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-smartos-rust

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "cd /opt/vagrant && rustc hello.rs && ./hello"
...
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-smartos-rust.box
```
