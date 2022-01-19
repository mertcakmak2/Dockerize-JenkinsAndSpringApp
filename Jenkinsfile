pipeline {
    agent any
    
    stages {
        
        stage ('Prepare') {
            steps {
               echo "started build."
            }
        }

        stage ('Maven Build') {
            steps {
                withMaven(maven: 'maven') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

        stage ('Build Docker Image') {
            steps {
                sh 'docker build -t mertcakmak2/pipeline-jenkins-spring-app .'
            }
        }

        stage ('Image Push to Dockerhub') {
            steps {
                sh 'ls'
                sh 'docker push mertcakmak2/pipeline-jenkins-spring-app'
            }
        }

        stage ('Run Project with docker-compose') {
            steps {
                sh 'ls'
                sh 'docker-compose up -d'
            }
        }

    }
}