pipeline {
    agent any
    tools {
        maven 'Maven 3.8.4'
        jdk 'jdk11'
    }
    stages {
        stage ('Prepare') {
            steps {
               echo "started build."
            }
        }

        stage ('Build') {
            withMaven {
               sh "mvn clean"
            }
        }
    }
}