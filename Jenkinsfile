pipeline {
    agent any
    tools {nodejs '21.7.1'}
    stages {
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }
        
        stage('test') {
            steps {
                // Replace the placeholder with your deployment command
                // For example, if you're using PM2 for process management:
                sh 'npm test'
            }
        }
        
        stage('start') {
            steps {
                // Perform any verification steps here (e.g., run tests)
                // For a simple "Hello World" app, this might not be necessary
                // Replace the placeholder with your test command
                sh 'npm start'
            }
        }
    }
    
    post {
        success {
            // This block executes if the pipeline succeeds
            echo 'Deployment successful!'

            // Additional actions like sending notifications can be added here
        }
        failure {
            // This block executes if the pipeline fails
            echo 'Deployment failed!'

            // Additional actions like sending notifications can be added here
        }
    }
}
