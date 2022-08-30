pipeline {	 
	agent any	 
		stages {     	 
    		stage('1. Build') {
        			steps {               	 
            			echo 'Donloading git'          
        			}     	 
    		}     	 
    		// stage('2. git checkout') {          	 
        	// 		steps {               	 
            //             git branch: 'ec2', url: 'https://github.com/manikcloud/simplilearn-projects.git'  

 
        	// 		}     
    		}
            stage('3. TF FMT') {          	 
        			steps {               	 
            			echo 'sudo terraform fmt'
            			
        			}     
    		}	
            stage('4. TF init') {          	 
        			steps {               	 
            			sh 'sudo terraform init'
            			
        			}     
    		}	

            stage('4. TF Plan') {          	 
        			steps {               	 
            			sh 'sudo terraform plan'
            			
        			}     
    		}  

            stage('4. TF apply') {          	 
        			steps {               	 
            			sh 'sudo terraform apply --auto-approve'
            			
        			}     
    		}                      
	}
}


