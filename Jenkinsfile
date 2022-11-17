def CONT_INST = ''
pipeline {
    agent any
    
    environment {
        VERSION  = "${env.BUILD_ID}"
        ACR_TKN  = credentials('acr_tkn')
        
    } 

    stages {
        stage('Checkout') {
            steps {
                git branch: 'feature', credentialsId: 'Github_pat', url: 'https://github.com/Lakshmimedha/devops-tech-test.git'
            }
        }
        
        stage('Image build') {
            steps {
                sh '''
                ls -la
                pwd
                docker build -t flaskapp:${VERSION} . --build-arg CONT_INST="${CONT_INST}"
                docker tag flaskapp:${VERSION}  pyflaskcont.azurecr.io/flaskapp:${VERSION}
                '''
            }
        }
        stage('Image2ACR') {
           steps {
               sh '''
               docker login pyflaskcont.azurecr.io -u pyflaskcont -p ${ACR_TKN}
               docker push pyflaskcont.azurecr.io/flaskapp:${VERSION}
               '''
           }
        }
        stage('deploy') {
          steps {
              sh '''
              docker rm -f flaskcont || true
              docker run -d --name flaskcont -p 8081:8000 flaskapp:${VERSION}
              '''
          }
        }
    
    }
}

