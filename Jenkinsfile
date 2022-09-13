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
				cp /root/var/lib/jenkins/workspace/target/*.war /root/opt/tomcat/webapps
				'''
			}
		}
    }
}
