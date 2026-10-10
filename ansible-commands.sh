#!/usr/bin/env bash

#server
alias ansible-server='ansible-playbook -i hosts.yml playbooks/server.yml'
#postgresql
alias ansible-postgresql='ansible-playbook -i hosts.yml playbooks/postgresql.yml'
alias ansible-postgresql-database='ansible-playbook -i hosts.yml playbooks/postgresql-database.yml'

# Help
ansible-help() {
  cat <<'EOF'
Ansible commands:

  ansible-server:    Initial Ubuntu server setup + install basic utilities
  ansible-postgresql:    Install and configure PostgreSQL
  ansible-postgresql-database:   Create and configure PostgreSQL database for project
EOF
}