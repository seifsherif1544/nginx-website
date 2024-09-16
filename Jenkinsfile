pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
                script {
                    def commitID = env.GIT_COMMIT
                    echo "your commit  id is ${commitID}"
                    sh "docker build -t ssherif/new-repo:${commitID} ."
                }
            }
        }
        
        stage('Push TO DOCKER HUB') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockercred', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                        sh "docker push ssherif/new-repo:${env.GIT_COMMIT}"
                    }
                }
            }
        }
        
        stage('STOP AND START CONTAINER') {
            steps {
                script{
                   sh "docker stop my-app || true"
                   sh "docker rm my-app || true"
                   sh "docker run -d -p 5000:5000 --name my-app ssherif/new-repo:${env.GIT_COMMIT}"
                }
            }
        } 
    }
}
