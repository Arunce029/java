pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/Arunce029/Java-repository.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('Deploy') {
            steps {
              sshagent(['tomcat']) {
                sh "scp -o StrictHostKeyChecking=no /home/ec2-user/Viju/* ec2-user@13.115.175.149:/opt/apache-tomcat-8.5.84/webapps"
                }
            }
        }
    }
}
