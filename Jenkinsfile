
pipeline {
    agent any
    tools
    {
      maven "maven-3.9.9"
    }
     stages
     {
        stage('git checkout')
        {
          steps
          {
             notifyBuild('STARTED')
             git branch: 'anil-dev', url: 'https://github.com/appleanil/maven-webapplication-project-kkfunda.git'
          }
        } //stage  close
        stage('Maven Build')
        {
        steps
        {
           sh "mvn clean package"
        }
        }  //stage close
        stage('SonarQube Report')
        {
           steps
           {
           sh "mvn sonar:sonar"
           }
        } //stage ending
        stage('Backup into Nexus')
        {
           steps
           {
              sh "mvn deploy"
           }
        }  //stage ending

        stage('Deploy to Tomcat')
        {
        steps {
                sh """
            curl -u anil:apple \
            --upload-file /var/lib/jenkins/workspace/anil-declartive-job/target/maven-web-application.war \
            "http://13.204.84.180:9090/manager/text/deploy?path=/maven-web-application&update=true"
        """
            }
        }  //stage ending

     }  // stages closing



post {
  success {

    script
    {
     notifyBuild(currentBuild.result)
    }
    
  }
  failure {

  script
  {
    notifyBuild(currentBuild.result)

  }
   
  }
}


} // pipeline ending

// Notification method
def notifyBuild(String buildStatus = 'STARTED') {
    buildStatus = buildStatus ?: 'SUCCESS'

    def colorCode
    def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    def summary = "${subject} (${env.BUILD_URL})"

    switch (buildStatus) {
        case 'STARTED':
            colorCode = '#FFFF00' // Yellow
            break
        case 'SUCCESS':
            colorCode = '#00FF00' // Green
            break
        default:
            colorCode = '#FF0000' // Red
    }

    slackSend(color: colorCode, message: summary, channel: '#anil-project')
}
