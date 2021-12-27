pipeline {
   agent any 

   stages{
       stage('checkout'){
           steps {
               git 
           }
       }
       stage{'build docker'}{
           steps{
               sh '''
                docker build -t rvmuralimohan/sudher:httpd .
               '''
           }

       }
      stage('push'){
          steps{
              sh '''
              docker logs -u rvmuralimohan -pHw2hell! 
              docker push rvmuralimohan/sudher:httpd
              '''
          }
      }

      stage('deployment') {
        node('linux'){
            sh ''' 
            docker run -d --name tesitng -p80:80 rvmuralimohan/sudher:httpd
            '''
        }
      }
   }

}