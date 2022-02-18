# docker-ansible
[![GitHub license](https://img.shields.io/github/license/hosein-yousefii/docker-ansible)](https://github.com/hosein-yousefii/docker-ansible/blob/master/LICENSE)
![LinkedIn](https://shields.io/badge/style-hoseinyousefi-black?logo=linkedin&label=LinkedIn&link=https://www.linkedin.com/in/hoseinyousefi)


Nowadays, Installing and upgrading docker is neccesary and it's a time consuming task when there are lots of servers.

## What is docker-ansible?

In order to facilitate the procedure of installing and upgrading Docker and Docker-compose, this repo would be highly beneficial. Especially once there are running containers and they shouldn't be down.

There are two ansible roles to install and upgrade Docker and Docker-compose automatically and you are able to play each of them separately or together. The roles are not related to each other.

### What is Ansible?

Ansible is a radically simple IT automation platform that makes your applications and systems easier to deploy and maintain. Automate everything from code deployment to network configuration to cloud management, in a language that approaches plain English, using SSH, with no agents to install on remote systems.

### What is Docker?

Docker is the #1 most wanted and #2 most loved developer tool, and helps millions of developers build, share and run any app, anywhere - on-prem or in the cloud.

### What is docker-compose?

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

# Get started:

!!pay attention each role has its own conditions.

The roles check if there is already a docker daemon or a docker-compose command on the target, they would exit.

If you want to force the docker installation set the **"ANSIBLE_DOCKER_FORCE_INSTALL=True"** (default is False).

To force docker compose installation set **"ANSIBLE_DOCKER_COMPOSE_FORCE_INSTALL=True"** (default is False).

**ATTENTION:** if you force docker-cmpose installation, it would install the latest version. (it is recommended do not use it when you know the command exist.)

To Upgrading a docker daemon you can set **"ANSIBLE_DOCKER_UPDATE=True"**  (default is False).

To upgrading docker compose set **"Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration."**  (default is False).

**note:** If there isn't any docker or docker-compose command you can play the roles without any variable.

## Usage:

You can set any variable that you want:

```bash
export ANSIBLE_DOCKER_UPDATE=True
```
After configuring the **docker.yml** file, you can create your **hosts.ini**. (these files are just for sample, use your own.)

Then you can play the roles:

```bash
ansible-playbook -i hosts.ini docker.yml
```


# How to contribute:

Currently, it works with Centos and Ubuntu (centos7 and ubuntu20 is tested), you can add other distributions or other feautures which can be useful.

Copyright 2021 Hosein Yousefi <yousefi.hosein.o@gmail.com>

