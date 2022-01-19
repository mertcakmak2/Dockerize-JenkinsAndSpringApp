pipeline {
   
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