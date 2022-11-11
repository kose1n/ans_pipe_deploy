#wlth maven build java 


node {
      stage('SCM Checkout'){
          git credentialsId: 'dockerhub_kose1n', url: 'https://github.com/kose1n/ans_pipe_deploy'
      }
      stage('MAven Package'){
          def MvnHome = tool name: 'maven-3', type: 'maven'
          def MvnCMD = "${MvnHome}/bin/mvn"
      }
}
