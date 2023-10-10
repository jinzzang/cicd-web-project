pipeline {
  // 빌드되어질 곳을 any로 선언
  agent any
  tools{
      maven 'Maven3.9.4'
  }
  stages {
      stage('git clone'){
        steps {
            git branch: 'main', url: 'https://github.com/jinzzang/cicd-web-project.git'      
        }    
      }
      
      stage('build'){
        steps {
            sh '''
                mvn clean compile package
            '''
        }    
      }
      stage('SonarQube analysis') {
          steps {
              withSonarQubeEnv('SonarQube-server') {
                  sh 'mvn sonar:sonar'
                  
              }
              
          }
          
      }
         stage('ssh publish') {
          steps {
              sshPublisher(publishers: [sshPublisherDesc(configName: 'jeus', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/project', remoteDirectorySDF: false, removePrefix: 'target/', sourceFiles: 'target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])    
              
          }
          
      }
      
  }
}