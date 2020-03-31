node{
// cloning the git repo

stage('scm check out'){
   
   git 'https://github.com/harish205/sai-terraform.git'

}

// terraform initializing

stage('tf init'){
  
  sh label: '', script: 'terraform init'

}

}
