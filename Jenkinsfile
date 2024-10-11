pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/build.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build-docker-image.sh
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                    ./jenkins/test/test.sh mvn test
                '''
            }
        }
        stage('Push') {
            steps {
                echo 'Pushing....'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}