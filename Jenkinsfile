pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                // Grant executable permissions to the build script
                sh 'sudo chmod +x deploy.sh'

                // Build the Docker image using the build script
                sh 'sudo ./deploy.sh'

                
            }
        }

    }
}
