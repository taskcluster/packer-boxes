boxes/base:
	packer base.json

cookbooks:
	berks install --path cookbooks
