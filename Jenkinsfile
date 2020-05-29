pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(branch: 'develop', url: 'yoururl')
      }
    }

    stage('Ansible Init') {
      steps {
        script {
          def tfHome = tool name: 'Ansible'
          env.PATH = "${tfHome}:${env.PATH}"
          sh 'ansible --version'
        }

      }
    }

    stage('Ansible Deploy') {
      steps {
        dir(path: 'dev/ansible') {
          sh 'ansible all -m ping -i hosts'
        }

      }
    }

  }
}