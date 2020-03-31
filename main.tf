provider "aws" {
  region  = "us-west-2"
  export AWS_ACCESS_KEY_ID="aws_access_id"
  export AWS_SECRET_ACCESS_KEY="aws_secret_key"
}
 resource "aws_vpc" "example" {
   cidr_block = "10.0.0.0/16"
   tags = {
       Name = "myDevOpsVPC"
  }
 }  