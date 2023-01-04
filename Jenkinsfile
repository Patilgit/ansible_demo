pipeline {
    agent any
    environment { 
        password = "darshan"
    }
    
     stages{
       /* stage('GetCode'){
            steps{
                git branch: 'main', url: 'https://github.com/Patilgit/ansible_demo.git'
            }
         }        
       stage('Build'){
            steps{
                sh 'mvn clean install'
            }
        }
        stage('ansible deploy'){
        steps{
            ansiblePlaybook credentialsId: 'ansible_demo', disableHostKeyChecking: true, installation: 'ansible', inventory: 'dev.inv', playbook: 'demo.yml'
       }
    }*/
        stage('vault'){
            steps{
                sh '''
                ansible-vault encrypt_string ${password} --vault-id 'pass' 
                ''' 
                  }
}
     }
}
