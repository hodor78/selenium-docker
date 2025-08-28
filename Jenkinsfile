pipeline {
    agent any

    stages {
        stage('Build Jar') {
            steps {
                sh "mvn clean package -DskipTests"
            }
        }
        stage('Build Image') {
            steps {
                sh "docker build -t hodor78/selenium ."
            }
        }
        stage('Push Image') {
            steps {
                sh "docker push hodor78/selenium"
            }
        }
    }
}
