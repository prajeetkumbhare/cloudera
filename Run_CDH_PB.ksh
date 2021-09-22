#/bin/ksh -xv

cd ~abpwrk1/pipeline-tc-cloudera_7.1

Realm_Name=`hostname | tr "[:lower:]" "[:upper:]"`
RT_Server_Name=ilcevfd249

#perl -pe s/CDH_SERVER_NAME/`hostname`/g -pi hosts
#perl -pe s/RT_SERVER_NAME/${RT_Server_Name}/g -pi hosts
#perl -pe s/CDH_SERVER_NAME/${Realm_Name}/g -pi group_vars/all

export ANSIBLE_LOG_PATH=/home/users/abpwrk1/pipeline-tc-cloudera_7.1/ansible.log
rm -f ${ANSIBLE_LOG_PATH}
ansible-playbook -i ./hosts playbook.yml -vvv
