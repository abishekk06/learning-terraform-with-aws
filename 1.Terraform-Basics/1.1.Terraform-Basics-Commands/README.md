# Terraform Command Basics

## Step-01: Introduction
- Basic Terraform Commands
  - terraform init
  - terraform validate
  - terraform plan
  - terraform apply
  - terraform destroy      

```t
# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  region     = "ap-south-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

# Resource Block
resource "aws_instance" "firstec2" {
  ami           = "ami-0e742cca61fb65051" # Amazon Linux in ap-south-1, update as per your region
  instance_type = "t2.micro"
}
```

## Step-02: Terraform Core Commands
```t
# Initialize Terraform
terraform init

# Terraform Validate
terraform validate

# Terraform Plan to Verify what it is going to create / update / destroy
terraform plan

# Terraform Apply to Create EC2 Instance
terraform apply 
```

## Step-03: Verify the EC2 Instance in AWS Management Console
- Go to AWS Management Console -> Services -> EC2
- Verify newly created EC2 instance



## Step-04: Destroy Infrastructure
```t
# Destroy EC2 Instance
terraform destroy

# Delete Terraform files 
rm -rf .terraform*
rm -rf terraform.tfstate*
```


