# Win-Ansible

Win-Ansible is a starter kit for Ansible on Windows platform. It creates a Ansible-Controller and a target Unix virtual machine, configure the machines to work as their name suggests and joins them on the existing Windows network.

## Installation

Run the setup.bat file to create the Ansible Playgroud.

```bash
git clone https://github.com/kausgang/Win-Ansible.git
cd Win-Ansible
.\setup.bat
```


## Prerequisite
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Value Proposition
- Provides Ansible sandbox environment with all the necessary configuration.
- Imitates production environment setup
  - No need to disable SSH host key checking.
  - No need to supply initial Ansible playbook. 
- Virtualboxes with customizable resources and settings
- Creates Controller virtual machine
  - Installs Ansible
- Create Target machine based on the image requirement
  - Setup passwordless authentication between the controller and target.
- Setup Target machine as default Ansible host for the Controller machine.
- Extracts privatekey of Controller and Target in *connection-setting* folder (generated after first run)
  - Use username = **vagrant** and the private key to login using SSH Client softwares (Putty/MobaXterm) 