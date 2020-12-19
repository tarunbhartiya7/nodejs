pipeline {
  agent any
  stages {
    stage('install nodejs') {
      parallel {
        stage('install nodejs') {
          steps {
            sh '''curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v'''
            echo 'Nodejs installed...'
          }
        }

        stage('pull from github') {
          steps {
            git(url: 'https://github.com/tarunbhartiya7/nodejs.git', poll: true, branch: 'master')
            echo 'pulled repo from github...'
          }
        }

      }
    }

    stage('run nodejs app') {
      steps {
        sh 'node app.js'
      }
    }

  }
}