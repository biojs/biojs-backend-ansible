# biojs-backend-ansible
Ansible playbook for automated deployment of [biojs.io](biojs.io) website.

## Setup

### install pip

``` bash
$ sudo apt-get install python-pip   # For Ubuntu
$ sudo easy_install pip             # For OSX
```

### install ansible
``` bash
$ pip install ansible
```

### clone the repository at the location of your choice and navigate into the directory
``` bash
$ git clone https://github.com/biojs/biojs-backend-ansible.git
$ cd biojs-backend-ansible
```

### Update the necessary variables(Especially the path to your ssh-keys and required user names)
``` bash
$ vim prod/group_vars/all
```

### Update the details in the deploy command
``` bash
$ vim deploy_prod.sh
```

### deploy the project!
``` bash
$ sh deploy_prod.sh
```