pipeline {	 
	agent any	 
		stages {     	 
    		stage('1. Build') {
        			steps {               	 
            			echo 'Build'          
        			}     	 
    		}     	 
    		stage('2. git checkout') {          	 
        			steps {               	 
                        git branch: 'ec2', url: 'https://github.com/manikcloud/simplilearn-projects.git'  

 
        			}     
    		}
            stage('3. TF FMT') {          	 
        			steps {               	 
            			echo 'terraform fmt'
            			
        			}     
    		}	
            stage('4. TF init') {          	 
        			steps {               	 
            			sh 'terraform init'
            			
        			}     
    		}	

            stage('4. TF Plan') {          	 
        			steps {               	 
            			sh 'terraform plan'
            			
        			}     
    		}  

            stage('4. TF apply') {          	 
        			steps {               	 
            			sh 'terraform apply --auto-approve'
            			
        			}     
    		}                      
	}
}


