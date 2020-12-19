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

    stage('install nodejs') {
      steps {
        sh '''curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v'''
        echo 'nodejs installed...'
      }
    }

    stage('run the app') {
      steps {
        sh 'node app.js'
      }
    }

  }
}