pipeline {
    agent { label 'adh-flt1' }


    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
        timestamps()
        timeout(time: 1, unit: 'HOURS')
        ansiColor('xterm')
    }

    parameters {
       string(name: 'playbook', defaultValue: "playbook.yml", description: 'PlayBook Name')
    }

    stages {
        stage('Debug') {
            when {
                environment name: 'debug', value: 'true'
            }

            steps { // run if when conditional is true
                sh '''
                    set +x;
                    echo "I am:: $(whoami)"
                    echo "This is the list of working directory"
                    ls
                    env
                '''
            }
        }

        stage('Git Checkout') {
            steps {
                git branch: env.BRANCH_NAME,
                    credentialsId: 'cloud-git-user',
                    url: 'https://torredecontrol.si.orange.es/gitlab/torredecontrolosp/cloud/alani/adh/pipeline-adh-cloudera.git'
            }
        }

        stage('Install Requirements') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'cloud-git-user', usernameVariable: 'NUSER', passwordVariable: 'NPASS')]) {
                    sh 'sed -i "s/torredecontrol.si.orange.es/${NUSER}:${NPASS}@torredecontrol.si.orange.es/g" requirements.yml'
                }
                sh 'ansible-galaxy install -f -r requirements.yml'
            }
        }

        stage('Run Playbook') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: "ansible_amdocs-ssh-key", keyFileVariable: 'keyfile')]) {
                    sh 'cat ${keyfile} > ./key.pem'
                }
                sh 'chmod 700 ./key.pem'

		withCredentials([file(credentialsId: "adh-flt1-cloudera-vault-pass", variable: 'FILE')]) {
	            sh "ansible-playbook -vvv --vault-password-file=${FILE} --private-key=key.pem ${params.playbook}"
               }
            }
       }

    }

    post {
        failure {
            echo "There have been some errors"
            sh 'printenv'
        }
        aborted {
            echo "Aborted"
        }
    }
}
