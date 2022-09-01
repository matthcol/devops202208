# Examples in command line mode
## Module ping
  ansible -i hosts -u srvadmin -m ping all
  ansible -i hosts -u srvadmin -m ping appservers

## Module file
  ansible -i hosts -u srvadmin -m file -a "path=/tmp/ohohoh state=directory" appservers
  ansible -i hosts -u srvadmin -m file -a "path=/tmp/ohohoh state=absent" appservers
