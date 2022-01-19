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
                sh 'docker build -t mertcakmak2/pipeline-jenkins-spring-app .'
                sh 'docker push mertcakmak2/pipeline-jenkins-spring-app'
            }
            
        }

    }
}