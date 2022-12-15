# Introduction 
A Terraform module to deploy an aks cluster on Azure

# Getting Started
TODO: Guide users through getting your code up and can talk about:
1.	Installation process:
Edit to your taste the values for each template as required 
2.	aks dependencies:
You need to provision key-vault and storage first for terraform backend. Please refer to the repo and provision using the powershell scripts


# Build and Test
 To authenticate with Azure:
run commands in your terminal
'az login'

INSTALL TERRAFORM:
'brew tap hashicorp/tap'
'brew install hashicorp/tap/terraform'
'brew update'
'brew upgrade hashicorp/tap/terraform'

TEST CHANGES:
'terraform init'
'terraform plan'
'terraform apply'

ON AZURE DEVOPS:
create your service principle to connect your pipeline to azure 

use the powershell script found in the repo to create keyvault and storage for the terraform backend

don't forget to create your auto.tfvars in order to input your variables while the pipeline is running

Use pipeline yml and follow instructions commented out in the yml file to deploy each module independently.

#Deploy

#Star

#Contribute if you can make this better or there are new updates.




