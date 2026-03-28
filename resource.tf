resource "aws_instance" "mumbai" {
  instance_type = var.instance_type
  ami           = var.ami
  count         = var.instance_count
}

resource "aws_instance" "hyd" {
  instance_type = var.instance_type
  ami           = var.ami
  count         = var.instance_count
  provider = aws.hyd
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-first-unique-bucket-12345"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-second-unique-bucket-12345"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}
