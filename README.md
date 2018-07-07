# vagrant-windows-gas: a Vagrant box with Windows + GNU assembler

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-gas-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-gas-i386

# EXAMPLE

```console
$ cd test/amd64
$ vagrant up
$ vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; as -o hello.obj hello.s; ld -o hello.exe hello.obj -L C:\\tools\\mingw64\\x86_64-w64-mingw32\\lib -lkernel32; .\hello\""
Hello World!
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
$ sh -c "cd amd64 && make vagrant-windows-gas-amd64.box"
$ sh -c "cd i386 && make vagrant-windows-gas-i386.box"
```
