Vagrant.configure('2') do |config|
  unless Vagrant.has_plugin?('vagrant-cachier')
    puts "run: vagrant plugin install vagrant-cachier"
    exit
  end

  config.cache.scope = :box
  config.vm.box      = 'bento/ubuntu-18.04'
  config.vm.box_version = "201812.27.0"
  config.vm.hostname = 'development-box'
  config.vm.synced_folder ".", "/home/vagrant/development"

  config.vm.provision :shell, path: 'setup/bootstrap.sh', keep_color: true, privileged: false

  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
  end

  ports = [
    8080, 3000, 3306, 1099
  ]

  ports.each { |p| config.vm.network :forwarded_port, guest: p, host: p, auto_correct: true }
end
