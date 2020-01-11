node {
   stage('Get Source') {
      // copy source code from local file system and test
      // for a Dockerfile to build the Docker image
      git ('https://github.com/YashJha5/Jenkins-.git')
      if (!fileExists("Dockerfile")) {
         error('Dockerfile missing.')
      }
   }
   stage('Build Docker') {
       // build the docker image from the source code using the BUILD_ID parameter in image name
         sh "sudo docker build -t task:v1 ."
   }
   stage("run docker container"){
        sh "sudo docker run -it --network=net -p 4000:5000  test:v1 "
    }
}
