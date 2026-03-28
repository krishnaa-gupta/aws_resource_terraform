terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "aws-cli/2.27.41"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
  
}


provider "aws" {
    region = "ap-southeast-1"
    alias = "syg"
  
}