# Terraform AWS Infrastructure

This repository contains Terraform code to provision resources on AWS, including an EC2 instance, an S3 bucket, a VPC with a subnet, and a MySQL database instance.

## Prerequisites

Before you begin, make sure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials with appropriate permissions (access key and secret key).

## Terraform Modules
### AWS Instance
Creates an EC2 instance in the specified AWS region.

### AWS S3 Bucket
Creates an S3 bucket with versioning enabled and private access control.

### AWS VPC and Subnet
Provisions a VPC with a subnet for your AWS infrastructure.

### AWS Database Instance
Deploys a MySQL database instance with the specified configuration.

## Screenshots

Here are some screenshots from the AWS Management Console to showcase the provisioned resources:
![Screenshot 2024-01-07 at 2 51 52 PM](https://github.com/sachinj56/Terraform-IaC-AWS-/assets/83384002/103664d8-c827-43a3-bb36-9c8767aa6956)

<img width="1109" alt="Screenshot 2024-01-07 at 2 35 31 PM" src="https://github.com/sachinj56/Terraform-IaC-AWS-/assets/83384002/3504fd65-6e3b-40de-b610-3ba319fa72a6">

<img width="1196" alt="Screenshot 2024-01-07 at 2 34 46 PM" src="https://github.com/sachinj56/Terraform-IaC-AWS-/assets/83384002/3fb20b59-8b6c-446c-9125-d6b7bcf8dd68">
