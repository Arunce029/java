pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				sh '''
				mvn clean install
				'''
				echo "building the application"
            }
        }
    }
}
