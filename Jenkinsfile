pipeline {
    agent any
    
    stages {
        
        stage ('Prepare') {
            steps {
               echo "started build."
            }
        }

        stage ('Build') {
            withMaven {
                sh "mvn clean"
            } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
        }
        
    }
}