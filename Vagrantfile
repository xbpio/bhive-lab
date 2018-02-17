Vagrant.configure('2') do |config|
  config.vm.box = 'bento/debian-8.10'
  config.vm.network 'public_network'

  config.vm.synced_folder 'freeswitch', '/freeswitch'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
  end

  config.vm.provision 'shell', path: 'provision.sh'
end
