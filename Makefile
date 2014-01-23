default: boxes/dev_vagrant.box

boxes/dev_base:
	packer build dev_base.json

boxes/dev_vagrant.box: boxes/dev_base
	packer build dev_vagrant.json

.PHONY: clean
clean:
	rm -Rf boxes/dev_base boxes/dev_vagrant
