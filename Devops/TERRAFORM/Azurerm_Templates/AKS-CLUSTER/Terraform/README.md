# Introduction 
A Terraform module to deploy an aks cluster on Azure

# Getting Started
TODO: Guide users through getting your code up and can talk about:
1.	Installation process:
Edit to your taste the values for each template as required 


# Build and Test Locallly
 To authenticate with Azure:
run commands in your terminal
'az login'

# INSTALL TERRAFORM:
1. 'brew tap hashicorp/tap'
2. 'brew install hashicorp/tap/terraform'
3. 'brew update'
4. 'brew upgrade hashicorp/tap/terraform'

# TEST CHANGES:
1. 'terraform init'
2. 'terraform plan'
3. 'terraform apply'

# ON AZURE DEVOPS:
1. create your service principle to connect your pipeline to azure 

2. TERRAFORM dependencies:
You need to provision key-vault and storage first for terraform backend. Please refer to the repo and provision using the powershell scripts

3. don't forget to create your auto.tfvars in order to input your variables while the pipeline is running

4. Use pipeline yml and follow instructions commented out in the yml file to deploy each module independently.

#Deploy

#Star

#Contribute if you can make this better or there are new updates.




