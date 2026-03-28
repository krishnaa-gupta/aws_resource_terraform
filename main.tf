terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "6.38.0"
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