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

## Exact configuration for quick deployment

1. Make sure you have a server with sudo or root access. Use the appropriate command and comment out the other in the deploy_prod.sh file. For a sudo non-root user, you will also need the password, which needs to be entered in the deploy command in deploy_prod.sh.
2. You need python2.7 installed on the server, as ansible has not completely shifted to python3. For this, before deploying, run the following on the server:
```bash
$ sudo apt install python
```
3. In the prod/deploy.yml file, change the user to your username on the server, for whom the ssh keys are authorized, i.e. the "deployer user".
4. Enter the server ip address in the prod/hosts file.
5. Changes in the prod/group_vars/all file:
- deployer_user and deployer_group : The user and group which you use to log into the server.
- ssh_dir : The **local** directory where you store your public and private ssh-keys are present.
- backend_remote_dir : The location where you want the project to be present. Recommended : /home/<Username>/live/biojs-backend(Including the name of desired directory. In the example, the name is biojs-backend)
- db configuration : Just change the db_password and db_name, if required.
- venv_dir : Location of the virtualenv. Recommended : /home/<Username>/live/biojsenv
- server_ip : IP of the server
- hostname : By default it is the IP, change it to the domain if DNS records are configured.(In the format domain.name)
- secondary_hostname : Change only in case of domains(it will be www.domain.name)
- GITHUB_CLIENT_ID and SECRET : Generated Github API credentials for accessing 5000 Github API calls/hour.
- nginx_use_letsencrypt, nginx_strong_dh_group : Yes for SSL certificate. **Note: A domain is necessary for this.**(This is in its initial stage.)
- certbot_admin_email : Email of the user/organization on which the SSL certificate will be authored.
- frontend_remote_dir : Location of the front-end directory. Recommended : /home/<Username>/live/biojs-frontend(Including the name of desired directory. In the example, the name is biojs-frontend)
