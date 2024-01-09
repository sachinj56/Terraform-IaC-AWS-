# providing info about the cloud provider
provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# creating EC2 instance in us-east-1 region
resource "aws_instance" "us-east-1" {
  ami           = "ami-079db87dc4c10ac91"  # Specify your desired AMI ID
  instance_type = "t2.micro"
}

# creating a S3 bucket
resource "aws_s3_bucket" "sachinbucket"{
    bucket = "s3-ec2-easy-bucket"
    acl = "private"
    
    tags = {
        Name = "Sachin Terraform bucket"
        Environment = "Dev-Env"
    }
    versioning{
        enabled=true
    }
}

# creating vpc
resource "aws_vpc "dev"{
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    
    tags ={
        Name = "dev-vpc"
    }
}

resource "aws_subnet" "sub"{
    vpc_id = aws_vpc.dev.id 
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "dev-subnet"
    }
}

# creating dtabase instance
resource "aws_db_instance" "projectdb" {
   allocated_storage    = 20
   db_name              = "myterraformdbdb"
   engine               = "mysql"
   engine_version       = "5.7"
   instance_class       = "db.t2.micro"
   username             = "foo"
   password             = "foobarbaz"
   parameter_group_name = "default.mysql5.7"
   skip_final_snapshot  = true
}