pipeline {
  agent any
  
  environment {
    DOCKER_IMAGE = "mydockerhubusername/my-app"
    DOCKER_TAG = "latest"
    DOCKER_PORT = "9000"
  }

  stages {
    stage('Build Docker Image') {
      steps {
        script {
          docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
        }
      }
    }

    stage('Run Docker Container') {
      steps {
        sh 'docker run 04c22e75a2f1'
          
        }
      }
    }
  }
}
