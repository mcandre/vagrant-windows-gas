Vagrant.configure("2") do |config|
  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.synced_folder ".", "/cygdrive/c/vagrant", type: "rsync"
end
