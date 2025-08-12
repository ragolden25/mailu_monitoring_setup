.PHONY: setup

setup:
	ansible-playbook -i inventories/example/hosts.ini playbooks/mailu_monitoring_setup.yml
