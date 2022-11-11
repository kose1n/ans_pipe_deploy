#wlth maven build java 


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
}
