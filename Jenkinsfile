pipeline {
    agent slave
    stages {
		stage('Build') {
            steps {
				sh '''
				 mvn clean install
				'''
            }
        }
    }
}
