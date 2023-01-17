pipeline {
    agent any
    environment {
      NEXUS_CREDS = credentials('nexus_credentials')
    } 
    stages {
       /*stage('Containers run') {
            steps {
              sh 'docker compose up -d'
              }  
            }
        }
        stage('SonarQube Analysis') {
		        steps{
              script {
        	              def scannerHome = tool 'sonarqube';
   		                  withSonarQubeEnv() {
    		                    sh "${scannerHome}/bin/sonar-scanner"
   			   }
		    }
		}
	    }*/
        stage('Build') {
            steps {
              sh 'docker build -t nginx .'
            }
        }
        stage('Login') {
            steps {
                sh 'docker login -u $NEXUS_CREDS_USR -p $NEXUS_CREDS_PSW localhost:8082'
            }
            }
        stage('Push') {
          steps {
                sh 'docker tag nginx localhost:8082/nginx'
                sh 'docker push localhost:8082/nginx'   
          }
    }
  }

}
