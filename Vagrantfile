# vim Vagrantfile

# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

env = YAML.load_file('env.yaml')

Vagrant.configure("2") do |config|

  env.each do |env|
    config.vm.define env['name'] do |host|
      host.vm.box = env['box']
      host.vm.hostname = env['hostname']
      host.vm.network 'public_network', bridge: "Hyper-V Virtual Ethernet Adapter #3", ip: env['ipaddress']
      host.vm.provider 'virtualbox' do |vb|
        vb.name = env['name']
        vb.memory = env['memory']
		    vb.cpus = env['cpu']
      end

      host.vm.provision "shell", path: env['provision']
      host.vm.provision "shell", path: env['provision2']
    end
  end
end