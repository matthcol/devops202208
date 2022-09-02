# Objectives

## Ansible modules
- ansible.builtin.file
- ansible.builtin.copy
- ansible.builtin.template
- ansible.builtin.apt|yum|dnf
- ansible.builtin.systemd
- postgresql_user

## Playbook deployment
### Play Api
- Install Openjdk 11
- Create non interactive system user movie
- Create directory /opt/movieapi with owner/group movie and mode 0755
- Copy artifact movieapi.jar in /opt/movieapi with owner/group movie and mode 0644
- Copy template application.properties in /opt/movieapi with owner/group movie and mode 0644
setting jdbc url (vendor: postgresql, host: DB host, port: 5432, DB name: postgres) 
and credentials (user: movie, password: XXXX)
### Play DB Postgres
- Install Postgresql
- Copy postgresql.conf
- Copy template pg_hba.conf authorizing clients from 192.168.56.0/24
- Enable and restart service
- (Bonus) create user movie with password XXXX in database

## Playbook cleanup
Desinstall everything !