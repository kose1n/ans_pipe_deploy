#wlth maven build some java app


node {
      stage('SCM Checkout'){
          git credentialsId: 'dockerhub_kose1n', url: 'https://github.com/kose1n/ans_pipe_deploy'
      }
      #proverit` bez
      
      stage('MAven Package'){
          def MvnHome = tool name: 'maven-3', type: 'maven'
          def MvnCMD = "${MvnHome}/bin/mvn"
            sh "${MvnCMD} clean package"
      }
      
      stage('Build Docker img'){
          sh 'docker build -t kammana/my-app:1.0 .'
            #openjdk8, git, openssh, mercurial, subversion procps tomcat, path and td tp
      }
      
      # usernameVariable USERNAME passwordVariable PASSWORD
      stage('Login Dhub'){
                withCredentials([usernamePassword(credentialsId: 'dockerhub_kose1n')]) {
                      sh "docker login -u kose1n -p ${dockerhub_kose1n}"
                  
            }
      }
     
      stage('Push Docker img') {
          sh 'docker push kose1n/app-maven-docker:1.1'
      }
      
}
