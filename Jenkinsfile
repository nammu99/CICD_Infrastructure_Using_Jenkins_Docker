pipeline{
    agent any
    tools {
  terraform 'terraform'
}
stages{
    stage('Git check out'){
        steps{
            git branch: 'main', url: 'https://github.com/nammu99/CICD_Infrastructure_Using_Jenkins_Docker.git'
        }
    }
        stage('terraform init'){
        steps{
            sh 'terraform init'
        }
    }
            stage('terraform apply'){
        steps{
            sh 'terraform apply --auto-approve'
        }
    }
}
}
