#!/usr/bin/env bash

#server
alias ansible-server='ansible-playbook -i hosts.yml playbooks/server.yml'
#postgresql
alias ansible-postgresql='ansible-playbook -i hosts.yml playbooks/postgresql.yml'
alias ansible-postgresql-database='ansible-playbook -i hosts.yml playbooks/postgresql-database.yml'

#Docker
alias ansible-docker='ansible-playbook -i hosts.yml playbooks/docker.yml'

#Jenkins
alias ansible-jenkins='ansible-playbook -i hosts.yml playbooks/jenkins.yml'
alias ansible-jenkins-uninstall='ansible-playbook -i hosts.yml playbooks/uninstall-jenkins.yml'

# Help
ansible-help() {
  cat <<'EOF'
Ansible commands:

  ansible-server:    Initial Ubuntu server setup + install basic utilities
  ansible-postgresql:    Install and configure PostgreSQL
  ansible-postgresql-database:   Create and configure PostgreSQL database for project
  ansible-docker:   Install and configure Docker
  ansible-jenkins:   Install and configure Jenkins
  ansible-jenkins-uninstall:   Uninstall Jenkins
EOF
}