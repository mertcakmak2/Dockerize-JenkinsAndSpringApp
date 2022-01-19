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

        stage ('Push to dockerhub') {
            steps {
                sh 'pwd'
                sh 'ls'
                sh 'docker ps'
            }
            
        }

    }
}