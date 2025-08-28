pipeline {

    agent any

    stages {
        stage('Build Jar') {
            steps {
                bat "mvn clean package -DskipTests"
            }
        }
        stage('Build Image') {
            bat "docker build -t hodor78/selenium ."
        }
        stage('Push Image') {
            bat "docker push hodor78/selenium"
        }
    }
}
