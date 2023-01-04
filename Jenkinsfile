pipeline {
    agent any
    environment { 
        password = "darshan"
        dpassword = "!vault |
          $ANSIBLE_VAULT;1.1;AES256
          35356139326563653930646462616265376235303636323735653237626232643363366164383433
          3035643362396537353065393231363032633665383531380a393463316237303464326461373831
          62623634383134386435313564646561633930396637383164663934356161643731643335343963
          6664303061336362660a616266366163326635663634623736656431333635373031373961666666
          3766"
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
                script{
                    sh 'ansible-vault encrypt_string ${password} --vault-password-file /var/lib/jenkins/workspace/demo/.vault_password.txt'
                    sh 'ansible-vault encrypt_string ${dpassword} --vault-password-file /var/lib/jenkins/workspace/demo/.vault_password.txt' 
                }
            }
        }
     }
}
