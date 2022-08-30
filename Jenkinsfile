pipeline {	 
	agent any	 
		stages {     	 
    		stage('1. Build') {
        			steps {               	 
            			echo 'Donloading git'          
        			}     	 
    		}     	 
    		stage('2. tf lint') {          	 
        			steps {               	 
                        sh 'tflint --init'
                        sh 'tflint'
                         
        			}     
   		}
            stage('3. TF FMT') {          	 
        			steps {               	 
            			echo 'sudo terraform fmt'
            			
        			}     
    		}	
            stage('4. TF init') {          	 
        			steps {               	 
            			sh 'sudo terraform init -no-color'
            			
        			}     
    		}	

            stage('4. TF Plan') {          	 
        			steps {               	 
            			sh 'sudo terraform plan -no-color'
            			
        			}     
    		}  

            stage('4. TF apply') {          	 
        			steps {               	 
            			sh 'sudo terraform apply --auto-approve -no-color'
            			
        			}     
    		}                      
	}
}

