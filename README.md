# Automate Deploying to AWS using Terraform with GitLab CICD Pipeline

This project demonstrates how to set up a CI/CD pipeline using GitLab to automate the deployment of infrastructure on AWS Cloud with Terraform. The pipeline follows DevOps best practices and provides a hands-on approach to learning and implementing industry-standard techniques.

**GitLab CI/CD Repository:** [ Automate Deploying to AWS Using Terraform with GitLab CI/CD Pipeline](https://gitlab.com/terraform4703751/automate-deploying-to-aws-using-terraform-with-gitlab-cicd-pipeline) 

### Features
* Automated infrastructure provisioning on AWS Cloud using Terraform.
* Modular Terraform code to manage VPC, Subnets, Security Groups, and EC2 instances.
* State management with S3 backend and DynamoDB for state locking.
* GitLab CI/CD pipeline with four stages: validate, plan, apply, and destroy.
* Manual approval for apply and destroy stages to ensure control over critical operations.
  
---

## Steps to Build the Pipeline

### 1. Write Terraform Code
Start by writing Terraform code to create the required infrastructure. Use Terraform CLI commands (terraform init, terraform apply) to verify everything works correctly.
```bash
terraform init
terraform validate
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```


### 2. Modularize Infrastructure
Split the Terraform code into reusable modules. For example, create separate modules for
* **VPC:** Define networking components like subnets and routing tables.
* **EC2 Instances:** Define compute instances with associated security groups.

Parameterize modules using input variables to allow flexibility and reuse.

### 3. Configure Backend for State Management
- **S3 Bucket:** Store Terraform state files securely in an S3 bucket.
- **DynamoDB:** Use DynamoDB for state locking to prevent simultaneous operations.
  
![Screenshot 2024-12-22 184025](https://github.com/user-attachments/assets/dd0ba872-8371-4ed2-8d9a-dcd96d4d0463)
![Screenshot 2024-12-22 184049](https://github.com/user-attachments/assets/ae6f1e43-99a7-4c87-9d10-5df024d5db6e)

### 4. Create a GitLab Repository
Push your Terraform project to a new GitLab repository.

### 5. Configure CI/CD Pipeline
Add a .gitlab-ci.yml file and add the pipeline code.This pipeline will have 4 different stages validate, plan, apply and destroy.These are the 4 stages we wanted to automate using CICD.

### 6.  Test Pipeline Stages
* Trigger the pipeline from GitLab.
* Ensure validate and plan stages run automatically.
* Use manual approval for apply and destroy stages.
  
![Screenshot 2024-12-22 184409](https://github.com/user-attachments/assets/3c2886bd-f52c-4581-a6bf-030d2cc2c452)
