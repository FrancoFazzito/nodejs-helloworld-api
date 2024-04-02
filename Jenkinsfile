pipeline {
    agent any
    tools {nodejs "node"}
    stages {
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build your Node.js app (if needed)
                // For a basic "Hello World" app, this might not be necessary
                sh 'npm run build'
            }
        }
        
        stage('Deploy') {
            steps {
                // Replace the placeholder with your deployment command
                // For example, if you're using PM2 for process management:
                sh 'npm start'
            }
        }
        
        stage('Verify') {
            steps {
                // Perform any verification steps here (e.g., run tests)
                // For a simple "Hello World" app, this might not be necessary
                // Replace the placeholder with your test command
                sh 'npm test'
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
