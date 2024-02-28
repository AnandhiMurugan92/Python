pipeline{
    agent any

        stages{
            stage('Checkout'){
                steps{

                    git credentialsId: 'gitpjt', url: 'https://github.com/AnandhiMurugan92/Python.git'
                    
                }
            }

            stage('Build'){
                steps{
                    sh 'python3 Demo.py'
                }
            }

            stage('Test'){
                steps{
                    sh 'python3 -m pytest Demo.py'
                    
                    //sh 'pytest python3 Demo.py'
                    echo "Testing completed"
                }
            }
        
    }

}