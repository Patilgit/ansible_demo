pipeline {
    agent any
    environment { 
        password = "darshan"
        dpassword = "!vault |  $ANSIBLE_VAULT;1.1;AES256353561393265636539306464626162653762353036363237356532376262326433633661643834333035643362396537353065393231363032633665383531380a393463316237303464326461373831626236343831343864353135646465616339303966373831646639343561616437316433353439636664303061336362660a6162663661633266356636346237366564313336353730313739616666663766"
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
                    sh 'ansible-vault encrypt darshan --vault-password-file /var/lib/jenkins/workspace/demo/.vault_password.txt'
                    sh 'ansible-vault decrypt darshan --vault-password-file /var/lib/jenkins/workspace/demo/.vault_password.txt'  
                    sh 'cat darshan'
                }
            }
        }
     }
}
