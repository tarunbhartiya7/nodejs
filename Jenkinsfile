pipeline {
  agent {
    node {
      label 'worker-1'
    }

  }
  stages {
    stage('pull from github') {
      steps {
        git(url: 'https://github.com/tarunbhartiya7/nodejs.git', branch: 'main', poll: true)
        echo 'pulled from github...'
      }
    }

    stage('install docker') {
      steps {
        sh '''sudo apt-get update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker -v'''
        echo 'docker installed...'
      }
    }

    stage('Build docker image') {
      steps {
        sh 'sudo docker build /home/ubuntu/workspace/nodejs_main webapp'
        echo 'image built successfully...'
      }
    }

  }
}