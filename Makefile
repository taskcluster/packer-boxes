S3_BUCKET?=task-cluster-dev

default: boxes/dev_vagrant.box

boxes/dev_base:
	packer build dev_base.json

boxes/dev_vagrant.box: boxes/dev_base
	packer build dev_vagrant.json

.PHONY: clean
clean:
	rm -Rf boxes/dev_base boxes/dev_vagrant

.PHONY:
publish: publish_dev_vagrant

.PHONY: publish_dev_vagrant
publish_dev_vagrant: boxes/dev_vagrant.box
	bin/s3_publish $(S3_BUCKET) boxes/dev_vagrant.box taskcluster_dev.box

