pipeline {
    agent any
    
    stages {
        
        stage ('Prepare') {
            steps {
               echo "started build."
            }
        }

        stage ('Build') {
            steps {
                withMaven(maven: 'maven') {
                    sh 'mvn clean'
                }
            }
            
        }

    }
}