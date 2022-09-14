pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				sh '''
				 mvn clean install
				'''
			}
		}
		stage('deploy') {
			steps {
				sh '''
				 cp /root/var/lib/jenkins/workspace/java_pipe1/target/*.war /root/opt/tomcat/webapps
				'''
			}
		}
    }
}
