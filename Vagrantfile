VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-6.7"

  config.vm.define :my do | my |
    my.vm.hostname = "mysql"
    my.vm.network :private_network, ip: "192.168.33.102"#, virtualbox__intnet: "intnet"
    my.vm.provision :shell, :path => "./init.sh",:privileged   => true
  end

end
