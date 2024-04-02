pipeline {
    agent any
    tools {nodejs '21.7.1'}
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('test') {
            steps {
                sh 'npm test'
            }
        }
        
        stage('Make Request to HelloWorld') {
            steps {
                script {
                    def response = sh(script: "curl http://localhost:3000", returnStdout: true)
                    echo "Response from HelloWorld: ${response}"
                }
            }
        }
    }
    
    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
