# Larasible

Install laravel requirements for ubuntu servers.

Note: Not intending to be all inclusive.  This is however intending to be basic, quick and easy.

## Usage

Clone this repo to an ubuntu server that needs provisioning.  

```bash
./provision.sh

# or
apt install python ansible -y
ansible-playbook playbook.yml
```

If you want to use docker, do the following.

```bash
APP_DIR=xxx docker-compose up -d
```

### Other commands

```bash
APP_DIR=xxx ./composer-install.sh install
```
