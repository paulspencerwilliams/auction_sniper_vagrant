# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box      = 'ubuntu/trusty32'
  config.vm.hostname = 'rails-dev-box'

  config.vm.network :forwarded_port, guest: 5280, host: 5280
  config.vm.network :forwarded_port, guest: 5222, host: 5222

  config.vm.provision :shell, path: 'vine.sh', keep_color: true
end
