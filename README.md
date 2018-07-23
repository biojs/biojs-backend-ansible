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

## Using the option to use add SSL encryption

This playbook gives an option to the users to automate the addition of an SSL certificate, which can be specified in the prod/group_vars/all file. The certificate authorizing agency is Let's Encrypt. It is also assumed that DNS records for the domains are already setup for the respective server, and the domains are updated in the "hostname" and "secondary_hostname" variables.  

For more information about Let's Encrypt, click [here](https://letsencrypt.org/getting-started/).  
To go through the step's for manually setting up an SSL certificate with nginx using Let's Encrypt, follow [this](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-16-04).