pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/Arunce029/java.git'
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
                sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/hellowrd/*.war ec2-user@54.168.73.176:/opt/apache-tomcat-8.5.84/webapps/"
                }
            }
        }
    }
}
