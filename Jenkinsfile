pipeline {
    agent {
        docker{
            image 'python'
        }
    }
    
    stages {
        stage('Build') {
            steps {
                echo 'Compilando ou resolvendo as dependendicas do projeto'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test'){
            steps {
                echo 'Executando testes de regressão'
                sh 'robot -d ./logs -e todo testes/'
            }
        }
        stage('UAT'){
            steps{
                echo 'Aguardando testes de aceitação do usuário'
                input(message: "Go To Production?", ok: 'Yes')
            }
        }
        stage('Production'){
            steps{
                echo 'App is Ready'
            }
        }
    }
}