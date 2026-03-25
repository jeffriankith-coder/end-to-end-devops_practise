pipeline {
    agent any

    environment {
        APP_NAME = "love-app"
        IMAGE_NAME = "devops-webapp"
        AWS_ACCOUNT = "255621206052"
        REGION = "ap-south-2"
        ECR_REPO = "${AWS_ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com/${IMAGE_NAME}"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_GITHUB_USERNAME/end-to-end-devops_practise.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                dir('MyApp') {
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Login to ECR') {
            steps {
                sh """
                aws ecr get-login-password --region ${REGION} \
                | docker login --username AWS --password-stdin ${AWS_ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com
                """
            }
        }

        stage('Tag Docker Image') {
            steps {
                sh "docker tag ${IMAGE_NAME}:latest ${ECR_REPO}:latest"
            }
        }

        stage('Push Image to ECR') {
            steps {
                sh "docker push ${ECR_REPO}:latest"
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh "kubectl apply -f deployment.yaml"
                sh "kubectl apply -f service.yaml"
                sh "kubectl rollout restart deployment ${APP_NAME}"
            }
        }

    }
}
