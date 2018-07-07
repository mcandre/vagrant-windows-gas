.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; as -o hello.obj hello.s; ld -o hello.exe hello.obj -L C:\\tools\\mingw32\\i686-w64-mingw32\\lib -lkernel32; .\\hello\""

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
