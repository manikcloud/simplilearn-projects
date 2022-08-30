pipeline {	 
	agent any	 
		stages {     	 
    		stage('1. Build') {
        			steps {               	 
            			echo 'Installing TF lint'     
                        sh 'curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash'
                        sh 'tflint --version '     
        			}     	 
    		}     	 
    		stage('2. tf lint') {          	 
        			steps {               	 
                        sh 'tflint --init'
                        sh 'tflint --loglevel=info --format=junit'
                         
        			}     
   		}
            stage('3. TF FMT') {          	 
        			steps {               	 
            			echo 'sudo terraform fmt -check-diff=true'
            			
        			}     
    		}	
            stage('3.1 TF Validate') {          	 
        			steps {               	 
            			echo 'sudo terraform validate -no-color'
            			
        			}     
    		}            
            stage('4. TF init') {          	 
        			steps {               	 
            			sh 'sudo terraform init -no-color'
            			
        			}     
    		}	

            stage('4. TF Plan') {          	 
        			steps {               	 
            			sh 'sudo terraform plan -no-color -refresh=tru -lock=tru'
            			
        			}     
    		}  

            stage('4. TF apply') {          	 
        			steps {               	 
            			sh 'sudo terraform apply --auto-approve -no-color'
            			
        			}     
    		}                      
	}
}


