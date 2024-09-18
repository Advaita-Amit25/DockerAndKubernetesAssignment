pipeline {
    agent any 
    tools {
        maven 'MAVEN_HOME'
	    dockerTool 'docker'
    }
    stages {
        stage('Build Maven') {
            steps {
                // Build the Maven project
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
                script {
                    // Build Docker image with a tag
                    sh 'docker build -t pannamrajesh/spring-boot-app .'
                }
            }
        }
        stage('Run container') {
            steps {
                script {
                    // Run Docker container
                    // pannamrajesh is a repoistory/imagename
                    sh 'docker run -d -p 8081:8080 pannamrajesh/spring-application'
                }
            }
        }
    }
}
