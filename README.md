Kubernetes DevOps Tools
=========

This role uses Helm on a preexistent Kubernetes namespace to install:
	- Prometheus
	- Kibana
	- Jenkins
	- Spinnaker

Requirements
------------

You need to execute these commands on a Debian based machine like Linux Mint, Linux MX or Ubuntu before you can use this role.

	- ansible-galaxy install ernestomedina17.ansible_role_kube_cluster_3vms_vagrant --force
	- ansible-galaxy install ernestomedina17.ansible_role_kube_cluster_3vms_common --force
	- ansible-galaxy install ernestomedina17.ansible_role_kube_cluster_3vms_kmaster --force
	- ansible-galaxy install ernestomedina17.ansible_role_kube_devops_namespace --force
	- ansible-playbook .ansible/roles/ernestomedina17.ansible_role_kube_cluster_3vms_vagrant/playme01.yml
	- ansible-playbook .ansible/roles/ernestomedina17.ansible_role_kube_cluster_3vms_common/playme02.yml
	- ansible-playbook .ansible/roles/ernestomedina17.ansible_role_kube_cluster_3vms_kmaster/playme03.yml
	- ansible-playbook .ansible/roles/ernestomedina17.ansible_role_kube_devops_namespace/playme04.yml


Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD, MIT

Author Information
------------------

This role was written by Ernesto Medina in 2019.
