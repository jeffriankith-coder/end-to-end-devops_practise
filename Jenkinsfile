pipeline {
    agent any

    environment {
        AWS_REGION = "ap-south-2"
        ECR_REPO = "255621206052.dkr.ecr.ap-south-2.amazonaws.com/devops-webapp"
        IMAGE_TAG = "latest"
        CLUSTER_NAME = "devops-cluster"
    }

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-webapp ./MyApp'
            }
        }

        stage('Login to ECR') {
            steps {
                sh '''
                aws ecr get-login-password --region $AWS_REGION | \
                docker login --username AWS --password-stdin $ECR_REPO
                '''
            }
        }

        stage('Tag Image') {
            steps {
                sh '''
                docker tag devops-webapp:latest $ECR_REPO:$IMAGE_TAG
                '''
            }
        }

        stage('Push Image to ECR') {
            steps {
                sh '''
                docker push $ECR_REPO:$IMAGE_TAG
                '''
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                kubectl apply -f deployment.yaml
                kubectl apply -f service.yaml
                '''
            }
        }
    }
}
