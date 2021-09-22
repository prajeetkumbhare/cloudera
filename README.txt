Readme file:

Following points needs to be taken into consideration before running the playbooks.

1) The playbooks needs to run through user with sudo all access.
2) Kerberos RPM’s needs to be installed on Management Node and Data Node.
3) Chrony or NTPD should be configured and running for Cloudera Installation.
4) Under pipeline-tc-cloudera directory there is a file “hosts” before running the playbook please replace with FQDN.
6) Under pipeline-tc-cloudera/group_vars there is a file “all” in this file change krb5_realm, cluster_version_cdh, cluster_version_cm and scm_parcel_repositories according to the requirement.
7) For any other DB change database_type in file pipeline-tc-cloudera/roles/cdh_flat/vars/db_server.yml.
8) For CDH related changes pipeline-tc-cloudera/roles/cdh_flat/vars/cdh_servers.yml. Change dfs_data_dir_list, fs_checkpoint_dir_list, dfs_name_dir_list, dfs_journalnode_edits_dir and dfs_datanode_failed_volumes_tolerated.
9) For Cluster name CDH_CLUSTER_NAME in file group_vars/all
9) In order to run the playbook go to pipeline-tc-cloudera directory and run the below command

ansible-playbook -i hosts playbook.yml --ask-pass -vvvv

